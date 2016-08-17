# Rename network interfaces to ETH instead of EN
sed -i "/^GRUB_CMDLINE_LINUX/ s/\"$/ net.ifnames=0 biosdevname=0\"/" /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg

NIC=`ifconfig| grep flags | grep en | awk -F":" '{ print $1 }'`
cd /etc/sysconfig/network-scripts
mv ifcfg-"$NIC" ifcfg-eth0
sed -i "s:NAME=$NIC:NAME=eth0:g" ifcfg-eth0
