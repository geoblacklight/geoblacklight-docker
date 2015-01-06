FROM geoblacklight/baseimage

# Adapted from pataquets/solr
MAINTAINER Eliot Jordan <eliot.jordan@gmail.com>


ENV SOLR_VERSION 4.7.2
ENV SOLR solr-$SOLR_VERSION

RUN \
 wget http://apache.mirrors.tds.net/lucene/solr/$SOLR_VERSION/$SOLR.tgz && \
 tar xvf $SOLR.tgz && \
 rm -v $SOLR.tgz && \
 mv $SOLR /opt/solr

WORKDIR /opt

RUN git clone https://github.com/geoblacklight/geoblacklight-schema.git
RUN cp -r geoblacklight-schema/conf/* /opt/solr/example/solr/collection1/conf

WORKDIR /opt/solr/example

EXPOSE 8983

ENTRYPOINT [ "java", "-jar", "start.jar" ]


