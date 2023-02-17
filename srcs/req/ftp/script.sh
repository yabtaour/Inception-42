#!/bin/bash

service vsftpd start
useradd -d /home/$FTP_USERNAME -m -s /bin/bash $FTP_USERNAME
echo "$FTP_USERNAME:$FTP_PASSWORD" | chpasswd
mkdir /home/$FTP_USERNAME/ftp
chown -R $FTP_USERNAME:$FTP_USERNAME /home/$FTP_USERNAME/ftp
echo "$FTP_USERNAME" > /etc/vsftpd.userlist

echo "$FTP_USERNAME" >> /etc/vsftpd.userlist
echo "local_enable=YES" >> /etc/vsftpd.conf
echo "write_enable=YES" >> /etc/vsftpd.conf
echo "chroot_local_user=YES" >> /etc/vsftpd.conf
echo "allow_writeable_chroot=YES" >> /etc/vsftpd.conf
echo "pasv_enable=YES" >> /etc/vsftpd.conf
echo "pasv_min_port=40000" >> /etc/vsftpd.conf
echo "pasv_max_port=40005" >> /etc/vsftpd.conf
echo "userlist_enable=YES" >> /etc/vsftpd.conf
echo "userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf
echo "userlist_deny=NO" >> /etc/vsftpd.conf
echo "secure_chroot_dir=/home/ftpuser/" >> /etc/vsftpd.conf
sed -i "s/listen=NO/listen=YES/" /etc/vsftpd.conf
sed -i "s/listen_ipv6=YES/#listen_ipv6=NO/" /etc/vsftpd.conf

service vsftpd stop
/usr/sbin/vsftpd
