FROM ttbb/base

WORKDIR /opt/sh

ENV MYSQL_HOME /opt/sh/mysql

RUN wget https://dev.mysql.com/get/mysql80-community-release-el8-1.noarch.rpm && \
dnf localinstall -qy mysql80-community-release-el8-1.noarch.rpm && \
rm -rf mysql80-community-release-el8-1.noarch.rpm && \
dnf module disable -y mysql && \
dnf install -qy --nogpgcheck mysql-community-server && \
chmod 777 -R /var/log && \
/var/log/mysqld.log && \
mkdir /opt/sh/mysql && \
chown -R sh:sh /opt/sh && \
chown -R sh:sh /var/lib/mysql* && \
chown -R sh:sh /run/mysqld && \
mysqld --initialize-insecure --user=sh

WORKDIR /opt/sh/mysql
USER sh
