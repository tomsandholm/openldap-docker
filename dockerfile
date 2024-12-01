FROM ubuntu:latest
RUN apt-get update && apt-get install -y openssh-server build-essential net-tools vim iputils-ping
RUN mkdir /var/run/sshd
RUN echo "root:password" | chpasswd
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
CMD ["/usr/sbin/sshd", "-D"]

