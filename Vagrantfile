# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "debian-wheezy-i386"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://bcfadb8ebd0795abb423-ca29da649401339a40eeab39ebf986d8.r44.cf3.rackcdn.com/debian-wheezy-i386.box"

  config.vm.provision :shell, :path => "build.sh"

  config.vm.forward_port 80,6080
  config.vm.forward_port 443,6443
  config.vm.forward_port 22,6022
  config.ssh.port =  6022
end
