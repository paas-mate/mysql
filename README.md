# mysql
## usage
### dry run
```bash
docker run -it --rm ttbb/mysql:nake bash
```
### run with port
```bash
docker run -p 3306:3306 -it --rm ttbb/mysql:nake bash
```
## install
### install as normal user
```bash
wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-8.0.18-1.el8.x86_64.rpm-bundle.tar
tar -xf mysql-8.0.18-1.el8.x86_64.rpm-bundle.tar -C mysqlrpm

yum localinstall -y /opt/sh/mysql/source/mysqlrpm/*rpm

mysqld --initialize-insecure --user=sh
mysqld --user=sh
```
### install as root
```bash
wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-8.0.18-1.el8.x86_64.rpm-bundle.tar
tar -xf mysql-8.0.18-1.el8.x86_64.rpm-bundle.tar -C mysqlrpm

yum localinstall -y /opt/sh/mysql/source/mysqlrpm/*rpm

mysqld --initialize-insecure --user=root
mysqld --user=root
```

### mysql log location
/var/log/mysqld.log
