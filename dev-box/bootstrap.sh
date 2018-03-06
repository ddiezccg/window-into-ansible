#!/usr/bin/env bash
#
# Install RHEL packages
yum -y update
yum -y install epel-release
yum -y groupinstall "Development Tools"
yum -y install libffi-devel
yum-builddep python 
yum -y install openssl-devel
yum -y install python-pip

# Update PIP to latest version
pip install --upgrade pip

# Install PIP packages
pip install packaging         # this seems to be missing for some reason
pip install "pywinrm==0.2.2"  # to enable support for WinRM in Ansible
pip install "ansible==2.4.3"


