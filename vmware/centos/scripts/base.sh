#!/bin/bash -eux

# Install EPEL repository.
rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

# Require tty & install base software packages
sudo sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
sudo yum -y install wget gcc make gcc-c++ kernel-headers kernel-devel-`uname -r` perl

# Add repo for vmware tools
sudo touch /etc/yum.repos.d/vmware-tools.repo
{
  echo '[vmware-tool]'
  echo 'name = VMware Tools'
  echo 'baseurl = http://packages.vmware.com/packages/rhel7/x86_64/'
  echo 'enabled = 1'
  echo 'gpgcheck = 0'
} >  /etc/yum.repos.d/vmware-tools.repo

#cat <<EOF > /etc/yum.repo.d/vmware-tools.repo
#[vmware-tool]
#name = VMware Tools
#baseurl = http://packages.vmware.com/packages/rhel7/x86_64/
#enabled = 1
#gpgcheck = 0
#EOF
