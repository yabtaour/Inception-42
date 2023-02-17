FROM debian:buster

RUN apt-get update

RUN apt-get install vsftpd -y

COPY ./script.sh .
RUN chmod 777 ./script.sh

#RUN service vsftpd start && \
#	useradd -d /home/ftpuser -m -s /bin/bash ftpuser && \
#	echo "ftpuser:ftppassword" | chpasswd && \
#	mkdir /home/ftpuser/ftp; \
#	chown -R ftpuser:ftpuser /home/ftpuser/ftp; \
#	echo "ftpuser" > /etc/vsftpd.userlist

#RUN chown -R ftpuser:ftpuser /home/ftpuser

#RUN sed -i 's/#write_enable=YES/write_enable=YES/g' /etc/vsftpd.conf && \
#	sed -i 's/#chroot_local_user=YES/chroot_local_user=YES/g' /etc/vsftpd.conf && \
#	echo "local_root=/home/ftpuser" >> /etc/vsftpd.conf && \
#	echo "user_sub_token=ftpuser" >> /etc/vsftpd.conf && \

#	echo "local_umask=022" >> /etc/vsftpd.conf && \
#	echo "allow_writeable_chroot=YES" >> /etc/vsftpd.conf

#RUN echo "ftpuser" >> /etc/vsftpd.userlist; \
#	echo "local_enable=YES" >> /etc/vsftpd.conf; \
#	echo "write_enable=YES" >> /etc/vsftpd.conf; \
#	echo "chroot_local_user=YES" >> /etc/vsftpd.conf; \
#	echo "allow_writeable_chroot=YES" >> /etc/vsftpd.conf; \
#	echo "pasv_enable=YES" >> /etc/vsftpd.conf; \
#	echo "pasv_min_port=40000" >> /etc/vsftpd.conf; \
#	echo "pasv_max_port=40005" >> /etc/vsftpd.conf; \
#	echo "userlist_enable=YES" >> /etc/vsftpd.conf; \
#	echo "userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf; \
#	echo "userlist_deny=NO" >> /etc/vsftpd.conf; \
#	echo "secure_chroot_dir=/home/ftpuser/" >> /etc/vsftpd.conf; \
#	sed -i "s/listen=NO/listen=YES/" /etc/vsftpd.conf;\
#	sed -i "s/listen_ipv6=YES/#listen_ipv6=NO/" /etc/vsftpd.conf

##ENTRYPOINT /usr/sbin/vsftpd
ENTRYPOINT ["./script.sh"]
