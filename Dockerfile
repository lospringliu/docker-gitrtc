FROM ibmjava:latest

MAINTAINER Xinchun Liu <lospringliu@gmail.com>

RUN apt-get update && apt-get install -y telnet iputils-ping net-tools sendmail vim python3-pip libmysqlclient-dev git && pip3 install --upgrade pip && pip3 install django docutils mysqlclient django-mptt django-reversion

RUN mkdir -p /root/bin
COPY .profile /root/
COPY README /root

RUN mkdir -p /workdir

EXPOSE 8000
