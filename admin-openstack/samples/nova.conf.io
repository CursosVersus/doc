[DEFAULT]

# LOGS/STATE
verbose=True

# AUTHENTICATION
auth_strategy=keystone
use_deprecated_auth=false

# SCHEDULER
#compute_scheduler_driver=nova.scheduler.filter_scheduler.FilterScheduler
#scheduler_driver=nova.scheduler.filter_scheduler.FilterScheduler
scheduler_driver=nova.scheduler.simple.SimpleScheduler

# VOLUMES
volume_group=nova-volumes
volume_name_template=volume_name_template=volume-%08x
iscsi_helper=tgtadm
iscsi_ip_prefix=10.0.1
iscsi_ip_address=10.0.1.1

# DATABASE
sql_connection=mysql://nova:calex2010!!@172.20.254.190/nova

# COMPUTE
libvirt_type=kvm
libvirt_use_virtio_for_bridges=true
start_guests_on_host_boot=true
resume_guests_state_on_host_boot=true
connection_type=libvirt
instance_name_template=instance-%08x
api_paste_config=/etc/nova/api-paste.ini
allow_resize_to_same_host=True

# APIS
osapi_compute_extension=nova.api.openstack.compute.contrib.standard_extensions
ec2_host=172.20.254.190
#ec2_dmz_host=172.20.254.190
s3_host=172.20.254.190
ec2_url=http://172.20.254.190:8773/services/Cloud
keystone_ec2_url=http://172.20.254.190:5000/v2.0/ec2tokens
cc_host=172.20.254.190
nova_url=http://172.20.254.190:8774/v1.1/

# RABBITMQ
rabbit_host=172.20.254.190
rabbit_password=guest

# GLANCE
image_service=nova.image.glance.GlanceImageService
glance_api_servers=172.20.254.190:9292

# NETWORK
network_manager=nova.network.manager.FlatDHCPManager
force_dhcp_release=True
dhcpbridge_flagfile=/etc/nova/nova.conf
dhcpbridge=/usr/bin/nova-dhcpbridge
firewall_driver=nova.virt.libvirt.firewall.IptablesFirewallDriver
my_ip=172.20.254.191
public_interface=bond0
#vlan_interface=eth0
flat_network_bridge=br100
flat_interface=bond0.60
fixed_range=10.0.0.0/24
floating_range=172.18.0.0/27 
#floating_range=172.20.254.0/24 
routing_source_ip=172.20.254.190
start_guests_on_host_boot=true
resume_guests_state_on_host_boot=true
network_size=32
flat_network_dhcp_start=10.0.0.2
flat_injected=False
force_dhcp_release=True
root_helper=sudo nova-rootwrap

# LOGS
logdir=/var/log/nova
state_path=/var/lib/nova
lock_path=/run/lock/nova
allow_admin_api=true

# VNC
novnc_enabled=true
vnc_keymap=es
novncproxy_base_url=http://172.20.254.190:6080/vnc_auto.html
vncserver_proxyclient_address=172.20.253.191
vncserver_listen=172.20.253.191
vnc_console_proxy_url=http://172.20.254.190:6080

