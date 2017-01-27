FROM ibmjava:latest

MAINTAINER Xinchun Liu <lospringliu@gmail.com>

RUN apt-get update && apt-get install -y unzip telnet iputils-ping net-tools vim python3-pip libmysqlclient-dev git && pip3 install --upgrade pip && pip3 install django docutils mysqlclient django-mptt django-reversion

RUN mkdir -p /root/bin
COPY .profile /root/
COPY .bashrc /root/
COPY .gitconfig /root/
COPY README /root

RUN mkdir -p /workdir
RUN locale-gen "en_US.UTF-8"
RUN dpkg-reconfigure locales

EXPOSE 8000
