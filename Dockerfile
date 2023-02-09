FROM shoothzj/base:fedora

ENV MYSQL_HOME /opt/mysql

RUN wget https://dev.mysql.com/get/mysql80-community-release-fc36-1.noarch.rpm && \
    dnf localinstall -qy mysql80-community-release-fc36-1.noarch.rpm && \
    rm -rf mysql80-community-release-fc36-1.noarch.rpm && \
    dnf module disable -y mysql && \
    dnf install -qy --nogpgcheck mysql-community-server && \
    chmod 777 -R /var/log && \
    /var/log/mysqld.log && \
    groupadd sh -g 1024 && \
    useradd -r -g sh sh -u 1024 -m -d /home/sh && \
    chown -R sh:sh /opt/mysql && \
    chown -R sh:sh /var/lib/mysql* && \
    chown -R sh:sh /run/mysqld && \
    mysqld --initialize-insecure --user=sh

WORKDIR /opt/mysql
USER sh
