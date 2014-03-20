# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
	# config.vm.box = "hashicorp/precise32"
  config.vm.box = "precise64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.network "private_network", ip: "192.168.50.4"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file  = "init.pp"
    puppet.options="--verbose --debug"
  end

  # If working on an existing project, plug in the path to project folder below. 
  config.vm.synced_folder "/Applications/MAMP/htdocs/caramoor/", "/var/www/htdocs"
end
