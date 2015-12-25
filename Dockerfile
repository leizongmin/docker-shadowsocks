# This dockerfile uses the centos7 image
# VERSION 1 - EDITION 1
# Author: Zongmin Lei
# Command format: Instruction [arguments / command] ..

# Base image to use, this must be set as the first line
FROM centos:7

MAINTAINER Zongmin Lei <leizongmin@gmail.com>

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "/tmp/get-pip.py"
RUN python "/tmp/get-pip.py"

RUN pip install --upgrade pip
RUN pip install shadowsocks

ENV SS_PASSWORD 1234567
ENV SS_METHOD aes-256-cfb

ENTRYPOINT /usr/bin/ssserver -k ${SS_PASSWORD} -m ${SS_METHOD}
EXPOSE 8388
