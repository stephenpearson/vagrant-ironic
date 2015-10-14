export OS_TENANT_NAME=demo
export OS_USERNAME=demo
export OS_PASSWORD={{ keystone_demo_password }}
export OS_AUTH_URL=http://{{ ansible_default_ipv4.address }}:35357/v2.0
