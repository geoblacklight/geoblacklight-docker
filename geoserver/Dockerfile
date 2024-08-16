ARG VERSION=2.25.3
FROM docker.osgeo.org/geoserver:$VERSION
RUN rm -rf $GEOSERVER_DATA_DIR
ADD geoserver_data/ /opt/geoserver_data/
