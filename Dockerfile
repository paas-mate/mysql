FROM shoothzj/base

RUN apt-get update && \
    apt-get install -y mysql-server-8.0 && \
    apt-get clean
