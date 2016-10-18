# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.hostmanager.enabled = true
  config.vm.box = "ubuntu/trusty64"
  config.vm.define "cloudshop", primary: true do |h|
    h.vm.hostname ="cloudshop"
    h.vm.network "private_network", ip: "192.168.135.10"
    h.vm.network "forwarded_port", guest: 80, host: 8080
  end
end  