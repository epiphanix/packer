# Install VMware Tools
yum install -y open-vm-tools open-vm-tools-deploypkg

#mkdir -p /mnt/vmware
# mount -o loop /home/vagrant/linux.iso /mnt/vmware
#cd /tmp
#tar xzf /mnt/vmware/VMwareTools-*.tar.gz
#umount /mnt/vmware
#rm -fr /home/vagrant/linux.iso
#/tmp/vmware-tools-distrib/vmware-install.pl -d
#rm -fr /tmp/vmware-tools-distrib

# Remove MAC Address association
#rm -rf /etc/udev/rules.d/70*
#sed -i "s/HWADDR=.*//" /etc/sysconfig/network-scripts/ifcfg-eth0

# Rename release to RHEL
rm -f /etc/redhat-release && touch /etc/redhat-release && echo "Red Hat Enterprise Linux Server release 7.0 (Maipo)" > /etc/redhat-release
