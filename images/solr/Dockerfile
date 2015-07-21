FROM makuk66/docker-solr:5.2

MAINTAINER Eliot Jordan <eliot.jordan@gmail.com>

USER root

ENV PATH /opt/solr/bin:${PATH}
ENV SCHEMA_VERSION 0.3.2
ENV SOLR_HOME /var/solr/data/
ENV GEO_CORE ${SOLR_HOME}geoblacklight/

RUN mkdir -p ${GEO_CORE}

ADD solr.xml ${SOLR_HOME}
ADD core.properties ${GEO_CORE}

RUN curl -L https://github.com/geoblacklight/geoblacklight-schema/archive/v${SCHEMA_VERSION}.tar.gz | \
    tar xz -C /tmp && \
    mv /tmp/geoblacklight-schema-${SCHEMA_VERSION}/conf ${GEO_CORE} && \
    chown -R ${SOLR_USER}:${SOLR_USER} /var/solr/

VOLUME ["/var/solr"]

USER ${SOLR_USER}

CMD ["solr", "start", "-f"]
