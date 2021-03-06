/usr/local/bin/bosh int configurations/vsphere/cloud-config.yml \
-o manifests/ops-files/k8s_master_static_ip_vsphere.yml \
-v director_name=kubobosh \
-v internal_cidr=10.40.207.0/24 \
-v internal_gw=10.40.207.253 \
-v internal_ip=10.20.20.1 \
-v kubernetes_master_host=10.40.207.10 \
-v reserved_ips=[10.40.207.1-10.40.207.9,10.40.207.22-10.40.207.254] \
-v network_name=KUBO-PG-3 \
-v deployments_network=KUBO-PG-3 \
-v vcenter_cluster=COMP-Cluster-1 \
-v vcenter_rp="KuBo-K8S-3" > mycloudconfig-3.yml
