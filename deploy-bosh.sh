/usr/local/bin/bosh create-env bosh.yml \
--state=mystate.json \
--vars-store=mycreds.yml \
-o vsphere/cpi.yml \
-o uaa.yml \
-o misc/powerdns.yml \
-o credhub.yml \
-v director_name=kubobosh \
-v internal_cidr=10.40.206.128/25 \
-v internal_gw=10.40.206.253 \
-v internal_ip=10.40.206.148 \
-v network_name=CNA-API \
-v vcenter_dc=Datacenter \
-v vcenter_ds=NFS-LAB-DATASTORE \
-v vcenter_ip=10.40.206.61 \
-v vcenter_user='administrator@vsphere.local' \
-v vcenter_password='VMware1!' \
-v vcenter_templates=kubobosh-templates \
-v vcenter_vms=kubobosh-vms \
-v vcenter_disks=kubobosh-disks \
-v vcenter_cluster=MGMT-Cluster \
-v dns_recursor_ip=10.20.20.1
