FROM ubuntu:14.04

MAINTAINER Eliot Jordan <eliot.jordan@gmail.com>

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install \
        unzip \
        wget \
        git \
        curl

USER root
CMD /bin/bash

