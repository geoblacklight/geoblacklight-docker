FROM solr:8.9

ENV WEBAPP_BASE_PATH "/opt/solr/server/solr-webapp/webapp/WEB-INF/lib"

COPY --chown=$SOLR_USER:$SOLR_USER security.json /opt/solr/security.json
COPY --chown=$SOLR_USER:$SOLR_USER ci-start.sh /opt/solr/server/scripts/ci-start.sh
COPY --chown=$SOLR_USER:$SOLR_USER lando-start.sh /opt/solr/server/scripts/lando-start.sh
COPY --chown=$SOLR_USER:$SOLR_USER jts-core-1.15.1.jar "$WEBAPP_BASE_PATH/jts-core-1.15.1.jar"

USER $SOLR_USER
