#!/bin/sh
 
 exec >> /var/tmp/bootstrap.out 2>&1
 set -x
 mkdir --mode=700 /home/upex/.ssh
 chown upex:upex /home/upex/.ssh
 wget --no-check-certificate --output-document=/home/upex/.ssh/authorized_keys https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub
 chown upex:upex /home/upex/.ssh/authorized_keys
 chmod 0600 /home/upex/.ssh/authorized_keys
 exit 0