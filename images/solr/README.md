
GeoBlacklight Solr Container
============================

GeoBlacklight is a discovery platform for geospatial data. See http://geoblacklight.org/ for more information.

This image provides a Solr instance used to power the GeoBlacklight application.

How to use this image
---------------------

Start a Solr instance:

    $ docker run --name geo-solr -d geoblacklight/solr

Persistent storage is available in the `/var/solr` `VOLUME`. Generally, it is recommended to use a data container for persistent storage:

    $ docker run --name solr-data -d geoblacklight/solr /bin/true
    $ docker run --name geo-solr -d --volumes-from solr-data geoblacklight/solr
