# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  disk = '../data/large_disk.vdi'
  config.vm.box = "centos/7"
  #config.vm.network "public_network"
  config.vm.network "private_network", ip: "10.10.0.4"
  
  config.vm.provider "virtualbox" do |vb|
     vb.memory = "10192"
     vb.cpus = 2

     unless File.exist?(disk)
       vb.customize ['createmedium', 'disk', '--filename', disk, '--variant', 'Standard', '--size', 10 * 1024], '--format', 'VDI'
     end
     vb.customize ['storageattach', :id,  '--storagectl', 'IDE', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', disk]
  end
  
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbook.yml"
  end
  
end
