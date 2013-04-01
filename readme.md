#Router Vagrant

The repository sets up a [Student Robotics](http://studentrobotics.org) router. This
is a vagrant configuration that will very easily go from scratch to a vagrantbox.

##Setup

1. Install virtualbox
2. Install the virtualbox extensions pack
3. Install vagrant (this may require ruby 1.9.3+ including development headers if going via a gem).
4. `git clone https://github.com/cjsoftuk/sr-router-vagrant.git && cd sr-router-vagrant`
5. `vagrant up --provision`
6. Wait about 20 minutes
7. `vagrant ssh` to log into the box. You have passwordless sudo from the
   vagrant user to root. In case you need to know the password it's 'vagrant'


##Some details

The Vagrant basebox upon which this is based is a debian wheezy i386 install with
very little else installed on top of it apart from those needed to make it
talk to vagrant.

This always fetches the latest stuff from puppet when the box
is built, and also does a bunch of other necessary configuration.

The virtual machine is networked into your computer via NAT. Every port on
the machine is mapped to 6000 + actual port (e.g. 6080,6443,6022). This
allows you to ssh in
