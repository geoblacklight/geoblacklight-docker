FROM ubuntu:14.04

MAINTAINER Eliot Jordan <eliot.jordan@gmail.com>

USER root

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install \
        unzip \
        wget \
        git \
        curl \
        openjdk-7-jdk

RUN mkdir /usr/java && ln -s /usr/lib/jvm/java-7-openjdk-amd64 /usr/java/default
   
CMD /bin/bash

