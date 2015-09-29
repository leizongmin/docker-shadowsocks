# This dockerfile uses the centos7 image
# VERSION 2 - EDITION 1
# Author: Zongmin Lei
# Command format: Instruction [arguments / command] ..

# Base image to use, this must be set as the first line
FROM centos:7

MAINTAINER Zongmin Lei <leizongmin@gmail.com>

RUN rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN yum update -y
RUN yum -y install python-pip
RUN pip install shadowsocks

ENTRYPOINT ["/usr/local/bin/ssserver", "-k $PASSWORD"]
EXPOSE 8388
