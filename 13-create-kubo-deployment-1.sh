/usr/local/bin/bosh int manifests/kubo.yml \
     -o manifests/ops-files/master-haproxy-vsphere.yml \
     -o manifests/ops-files/worker-haproxy.yml \
     -v deployments_network=DPortGroup-VM-1 \
     -v kubo-admin-password="VMware1!" \
     -v kubelet-password="VMware1!" \
     -v kubernetes_master_port=443 \
     -v kubernetes_master_host=10.40.207.40 \
     -v deployment_name=mykubocluster-1 \
     -v worker_haproxy_tcp_frontend_port=1234 \
     -v worker_haproxy_tcp_backend_port=4231 > mykubo-1.yml