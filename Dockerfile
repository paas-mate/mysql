FROM shoothzj/base

ENV MYSQL_HOME /opt/mysql

RUN apt-get update && \
    apt-get install -y mysql-server-8.0 && \
    apt-get clean

RUN mkdir /opt/mysql && \
    chown -R mysql:mysql /opt/mysql
RUN mysqld --initialize-insecure --basedir=/opt/mysql --datadir=/opt/mysql/data
