FROM centos:7

MAINTAINER Freddie Zhang<myzswen@gmail.com>

RUN rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN yum -y update
RUN yum install -y gcc python-pip python-dev python-devel libevent-devel
RUN pip install --upgrade cython falcon
RUN pip install --upgrade gevent gunicorn