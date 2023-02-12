FROM shoothzj/base

ENV MYSQL_HOME /opt/mysql

RUN apt-get update && \
    apt-get install -y mysql-server && \
    apt-get clean

WORKDIR /opt/mysql
