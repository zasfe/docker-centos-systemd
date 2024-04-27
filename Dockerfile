FROM centos:7

LABEL maintainer="zasfe <myseit@gmail.com>"
LABEL build_date="2024-04023"

ENV container=docker

RUN cd /lib/systemd/system/sysinit.target.wants/ ; \
    for i in * ; do [ $i = systemd-tmpfiles-setup.service ] || rm -f $i ; done ; \
    rm -f /lib/systemd/system/multi-user.target.wants/* ; \
    rm -f /etc/systemd/system/*.wants/* ; \
    rm -f /lib/systemd/system/local-fs.target.wants/* ; \
    rm -f /lib/systemd/system/sockets.target.wants/*udev* ; \
    rm -f /lib/systemd/system/sockets.target.wants/*initctl* ; \
    rm -f /lib/systemd/system/basic.target.wants/* ; \
    rm -f /lib/systemd/system/anaconda.target.wants/*

RUN yum install -y iproute net-tools openssh-server sudo firwalld python-firewal; \ 
    ssh-keygen -A ; \
    sed -i "s/#UseDNS yes/UseDNS no/g" /etc/ssh/sshd_config ; \
    sed -i "s/#UseDNS no/UseDNS no/g" /etc/ssh/sshd_config ; \
    systemctl enable sshd ; \
    systemctl restart sshd ; \
    useradd vagrant ; \
    echo "vagrant" | passwd --stdin vagrant ; \
    chmod u+w /etc/sudoers.d ; \
    echo "vagrant        ALL=NOPASSWD:       ALL" >> /etc/sudoers.d/vagrant ; \
    chmod u-w /etc/sudoers.d ; \
    rm -f /run/nologin ;

VOLUME ["/sys/fs/cgroup"]

CMD ["/sbin/init"]
