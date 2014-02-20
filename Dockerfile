FROM ubuntu:12.04

MAINTAINER Quentin Suire

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install wget

# Python 2.7
RUN apt-get -y install python-dev

# pip
RUN wget --no-check-certificate -q -O- https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python

# virtualenv
RUN pip install virtualenv

CMD ["/bin/bash"]
