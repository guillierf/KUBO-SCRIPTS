echo "****** DELETING A K8S CLUSTER !!! ******"
echo " Are you sure[y/N]? "
read answer
if [ "$answer" = "y" ]
then
 bosh -e kubobosh delete-deployment -d mykubocluster-2 --force
 ./A-credhub-login.sh
 credhub delete -n "/kubobosh/mykubocluster-2/tls-kubernetes"
else
 echo "Nothing Done!"
fi
