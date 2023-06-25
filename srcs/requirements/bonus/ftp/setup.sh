#!/bin/bash

useradd $FTP_USER 

echo "listen=YES" > /etc/vsftpd.conf
echo "anonymos_enable=NO" >> /etc/vsftpd.conf
echo "local_enable=YES" >> /etc/vsftpd.conf
echo "write_enable=YES" >> /etc/vsftpd.conf
echo "chroot_local_user=YES" >> /etc/vsftpd.conf