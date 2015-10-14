# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu-14.04-server-amd64"
  config.vm.box_check_update = false

  config.vm.network :private_network,
    :libvirt__network_name => "ironic",
    :libvirt__dhcp_enabled => false,
    :libvirt__netmask => "255.255.255.0",
    :libvirt__forward_mode => "nat",
    :libvirt__host_ip => "172.16.180.2",
    :ip => "172.16.180.8"

  config.vm.provider :libvirt do |vm|
    vm.memory = 8192
    vm.cpus = 2
    vm.nested = true
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/site.yml"
  end
end
