echo "****** DELETING A K8S CLUSTER !!! ******"
echo " Are you sure[y/N]? "
read answer
if [ "$answer" = "y" ]
then
 bosh -e kubobosh delete-deployment -d mykubocluster-3 --force
 credhub delete -n "/kubobosh/mykubocluster-3/tls-kubernetes"
else
 echo "Nothing Done!"
fi
