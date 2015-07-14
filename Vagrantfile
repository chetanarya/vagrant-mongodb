# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|  
  config.vm.box = "ubuntu/trusty64"  
  config.vm.hostname = "mongodb"
  config.vm.post_up_message = "Just do mongo on your prompt and you are all set"
  config.vm.network :forwarded_port, guest: 27017, host: 27017  
  config.vm.provider :virtualbox do |vb|
    vb.name = "mongodb"
    vb.memory = 768
    vb.cpus = 1
    #vb.customize ["modifyvm", :id, "--memory", 768]
  end  
  config.vm.provision "shell", path: "provision.sh"
end
