credhub_user_password=$(bosh -e kubobosh int "../bosh-deployment/mycreds.yml" --path "/credhub_cli_password")
credhub_api_url="https://10.40.206.148:8844"
bosh -e kubobosh int "../bosh-deployment/mycreds.yml" --path="/uaa_ssl/ca" > credhubca.crt
bosh -e kubobosh int "../bosh-deployment/mycreds.yml" --path="/credhub_tls/ca" > credhub.crt
credhub login -u credhub-cli -p "${credhub_user_password}" -s "${credhub_api_url}" --ca-cert credhubca.crt --ca-cert credhub.crt


bosh int <(credhub get -n "/kubobosh/mykubocluster-2/tls-kubernetes" --output-json) --path=/value/ca > mykubecert.crt
endpoint="10.40.207.23"
port="443"
address="https://${endpoint}:${port}"
admin_password="VMware1!"
context_name="mykubocluster-2"
kubectl config set-cluster "mykubocluster-2" --server="$address" --certificate-authority=mykubecert.crt --embed-certs=true
kubectl config set-credentials "mykubocluster-2-admin" --token="${admin_password}"
kubectl config set-context "mykubocluster-2" --cluster="mykubocluster-2" --user="mykubocluster-2-admin"
kubectl config use-context "mykubocluster-2"
kubectl get pods --namespace=kube-system

