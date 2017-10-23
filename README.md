# KUBO-SCRIPTS
#

This repository contains all scripts to deploy Bosh Director and then Deploy K8s clusters.

## Bootstrap your Bosh Client VM
* Use script '1-start.sh' to bootstrap Bosh Client VM
```
source 1-start.sh
```


##  Deploy Bosh Director
* Use script 'deploy-bosh.sh' to deploy Bosh Director.

```
deploy-bosh.sh
```


## Deploy K8s Clusters

* Use the following scripts sequentially to deploy K8s clusters:
'x1-create-cloud-config-1.sh', 
'x2-update-cloud-1.sh', 
'x3-create-kubo-deployment-1.sh', 
'x4-deploy-k8s-1.sh'

```
x1-create-cloud-config-1.s
x2-update-cloud-1.sh
x3-create-kubo-deployment-1.s
x4-deploy-k8s-1.sh
```

Note: x refers to cluster number. Here, we have created 3 K8s clusters.

## Connect to K8s Clusters
* Use the script 'x5-connect-k8s-1.sh' to connect to K8s cluster.
```
x5-connect-k8s-1.sh
```

Note: x refers to cluster number. Here, we have created 3 K8s clusters.

## Delete K8s Cluster
* Use the script 'x6-delete-k8s-cluster-1.sh' to delete a K8s cluster.
```
x6-delete-k8s-cluster-1.sh
```

Note: x refers to cluster number. Here, we have created 3 K8s clusters.


