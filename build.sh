#!/bin/bash
apt-get -y update                           # Package updates first please
apt-get -y upgrade                          # Do all upgrades
apt-get -y dist-upgrade                     # Do all upgrades
apt-get -y install git ruby-ldap puppet     # Now install the extras we need

# Because debian is insane
sed -ie 's|#!.*/usr/bin/ruby1.8|#!/usr/bin/ruby|' /usr/bin/puppet

# Dump the puppet config in
rm -rf /etc/puppet
git clone git://studentrobotics.org/network/router/puppet.git /etc/puppet
cd /etc/puppet && git submodule init
cd /etc/puppet && git submodule update
# Apply puppet
puppet apply /etc/puppet/manifests/sr-dev-router.pp

echo "Server configured successfully!"
