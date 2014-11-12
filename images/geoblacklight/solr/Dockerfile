FROM geoblacklight/baseimage

# Adapted from makuk66/docker-solr
# Martijn Koster "mak-docker@greenhills.co.uk"

MAINTAINER Eliot Jordan <eliot.jordan@gmail.com>

ENV SOLR_VERSION 4.10.2
ENV SOLR solr-$SOLR_VERSION
RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get -y install lsof curl procps && \
  mkdir -p /opt && \
  wget -nv --output-document=/opt/$SOLR.tgz http://www.mirrorservice.org/sites/ftp.apache.org/lucene/solr/$SOLR_VERSION/$SOLR.tgz && \
  tar -C /opt --extract --file /opt/$SOLR.tgz && \
  rm /opt/$SOLR.tgz && \
  ln -s /opt/$SOLR /opt/solr

WORKDIR /opt

RUN apt-get update && apt-get -y install git
RUN git clone https://github.com/sul-dlss/geoblacklight-schema.git
RUN cp -r geoblacklight-schema/conf/* /opt/solr/example/solr/collection1/conf

EXPOSE 8983

CMD ["/bin/bash", "-c", "cd /opt/solr/example; java -jar start.jar"]