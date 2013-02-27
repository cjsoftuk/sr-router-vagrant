#!/bin/bash
apt-get -y install git ruby-ldap puppet
# Because debian is insane
sed -ie 's|#!.*/usr/bin/ruby1.8|#!/usr/bin/ruby|' /usr/bin/puppet
rm -rf /etc/puppet
git clone git://studentrobotics.org/network/router/puppet.git /etc/puppet
cd /etc/puppet && git submodule init
cd /etc/puppet && git submodule update
puppet apply /etc/puppet/manifests/sr-dev-router.pp

#wget --no-check-certificate https://localhost -O /dev/null
#if [ $? ]
#then
    echo "Server configured successfully!"
#else
#    echo "Server configuration went wrong :("
#fi
