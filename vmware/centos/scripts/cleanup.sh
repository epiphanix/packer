# Remove software packages & files
sudo yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts puppet
sudo yum -y clean all
sudo rm -rf VBoxGuestAdditions_*.iso
sudo rm -rf /tmp/rubygems-*
