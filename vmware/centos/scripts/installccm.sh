#!/bin/bash

cd /
sudo yum install -y wget
echo "Downloading installer"
sudo wget http://download.cliqr.com/release-4.2-20151103.3/installer/core_installer.bin --no-check-certificate
sudo chmod 755 core_installer.bin
sudo ./core_installer.bin centos7 vmware ccm
sudo wget http://download.cliqr.com/release-4.2-20151103.3/appliance/ccm-installer.jar --no-check-certificate
sudo wget http://download.cliqr.com/release-4.2-20151103.3/appliance/ccm-response.xml --no-check-certificate
sudo /usr/lib/jvm/java-7-sun/bin/java -jar ccm-installer.jar ccm-response.xml
echo "CCM installed"
