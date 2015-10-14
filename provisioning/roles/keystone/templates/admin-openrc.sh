export OS_TENANT_NAME=admin
export OS_USERNAME=admin
export OS_PASSWORD={{ keystone_admin_password }}
export OS_AUTH_URL=http://{{ ansible_default_ipv4.address }}:35357/v2.0
