#!/bin/bash

service vsftpd start

# Add the USER, change his password and declare him as the owner of wordpress folder and all subfolders

adduser $FTP_USER --disabled-password --gecos ""

echo "$FTP_USER:$FTP_PASSWD" | chpasswd

echo "$FTP_USER" >> /etc/vsftpd.userlist

mkdir -p /home/$FTP_USER/ftp

chown nobody:nogroup /home/$FTP_USER/ftp
chmod a-w /home/$FTP_USER/ftp

mkdir -p /home/$FTP_USER/ftp/files
chown -R $FTP_USER:$FTP_USER /home/$FTP_USER/ftp
chmod -R 755 /home/$FTP_USER/ftp

sed -i -e "s/#write_enable=YES/write_enable=YES/"   /etc/vsftpd.conf
sed -i -e "s/#chroot_local_user=YES/chroot_local_user=YES/"   /etc/vsftpd.conf

echo "
local_enable=YES
allow_writeable_chroot=YES
pasv_enable=YES
local_root=/home/$FTP_USER/ftp
pasv_min_port=40000
pasv_max_port=40005
userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf

service vsftpd stop

/usr/sbin/vsftpd