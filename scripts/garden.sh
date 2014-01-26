#!/bin/bash

set -e

# set up packages
apt-get update
apt-get -y install iptables quota rsync ruby1.9.1 ruby1.9.1-dev git lsof
apt-get -y remove apparmor
dpkg --purge apparmor

# install Go
tar zxf /tmp/go.tar.gz -C /usr/local

# set up dev profiles
mv /tmp/profile.d/* /etc/profile.d

# install rootfs
mkdir -p /opt/warden/rootfs
tar xzf /tmp/rootfs.tar.gz -C /opt/warden/rootfs

# set up container depot
mkdir -p /opt/warden/containers