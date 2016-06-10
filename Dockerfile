# Latest Ubuntu LTS

FROM ubuntu:14.04

MAINTAINER Claudia de Luna <claudia@indigowire.net>

RUN apt-get -y update && \
    apt-get install -y python-yaml python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools python-pkg-resources git python-pip
	
RUN apt-get install -yq software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update -q && \
    apt-get install -yq ansible
	
RUN apt-get install -y tree && \
    apt-get install -y vim && \
    apt-get install -y wget

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /ansible

EXPOSE 22

  