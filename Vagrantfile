# -*- mode: ruby -*-
# vi: set ft=ruby:fdm=marker
APP_HOSTNAME = "local.kfpun.com"
APP_HOST = "33.33.33.10"

# Config
NFS = true
VM_MEMORY = "2048"
VM_CPUS = "4"

# Vagrant 2.0.x
Vagrant.configure("2") do |config|
  # Use box
  config.vm.box = "ubuntu/trusty64"

  # Set hostname
  config.vm.hostname = APP_HOSTNAME

  # Configure network
  config.vm.network :private_network, ip: APP_HOST
  # config.vm.network :public_network

  config.vm.provider :virtualbox do |vb|
    # Don't boot with headless mode
    # vb.gui = true

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.name = APP_HOSTNAME
    vb.memory = VM_MEMORY
    vb.cpus = VM_CPUS

    # Fix for slow external network connections
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  # Share folders
  # to use NFS with Ubuntu: sudo apt-get install nfs-kernel-server
  config.vm.synced_folder "..", "/workspace", :nfs => NFS

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/base.yml"
    ansible.groups = {
      'development' => ['default']
    }
    ansible.limit = "all"
    ansible.sudo = true
    ansible.sudo_user = "root"
    ansible.verbose = "vvvv"
  end

  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true
end
