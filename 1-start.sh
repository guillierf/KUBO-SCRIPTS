##################
#
# to launch the script:
# source 1-start.sh
#
##################

#!/bin/bash


echo "**************** cd bosh-deployment\n"
cd bosh-deployment


echo "**************** Connect to Bosh"
/usr/local/bin/bosh alias-env kubobosh -e 10.40.206.148 --ca-cert <(/usr/local/bin/bosh int ./mycreds.yml --path /director_ssl/ca)
export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=$(/usr/local/bin/bosh int ./mycreds.yml --path /admin_password)


echo "**************** bosh -e kubobosh env"
/usr/local/bin/bosh -e kubobosh env

echo "**************** bosh -e kubobosh instances\n"
bosh -e kubobosh instances

echo "**************** cd kubo-deployment \n"
cd ..
cd kubo-deployment

echo "*************** export BOSH_ENVIRONMENT=kubobosh \n"
export BOSH_ENVIRONMENT=kubobosh

