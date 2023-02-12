FROM shoothzj/base

ENV MYSQL_HOME /opt/mysql

RUN apt-get update && \
    apt-get install -y mysql-server-8.0 && \
    apt-get clean

RUN mkdir /opt/mysql && \
    chmod 777 /opt/mysql && \
    sed -i 's/^user.*/user = root/' /etc/mysql/mysql.conf.d/mysqld.cnf
RUN ls -ltr /opt/mysql && \
    ls -ltr /opt && \
    /usr/sbin/mysqld --initialize-insecure --user=root --basedir=/opt/mysql --datadir=/opt/mysql/data
