#!/bin/bash
apt-get -y install git ruby-ldap
rm -rf /etc/puppet
git clone git://studentrobotics.org/server/puppet.git /etc/puppet
cd /etc/puppet && git submodule init
cd /etc/puppet && git submodule update
puppet apply /etc/puppet/manifests/sr-router-dev.pp

#wget --no-check-certificate https://localhost -O /dev/null
#if [ $? ]
#then
    echo "Server configured successfully!"
#else
#    echo "Server configuration went wrong :("
#fi
