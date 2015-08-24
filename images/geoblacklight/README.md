
GeoBlacklight Application Container
============================

GeoBlacklight is a discovery platform for geospatial data. See http://geoblacklight.org/ for more information.

This image provides a container for the GeoBlacklight application.

How to use this image
---------------------

Pull images:

	$ docker pull geoblacklight/solr
	$ docker pull geoblacklight/geoblacklight

Start a GeoBlacklight with SOLR:

	$ docker run --name app_solr -d -p 8983 geoblacklight/solr
	$ docker run --name app_gbl  -d -p 3000:3000 --link app_solr:solr geoblacklight/geoblacklight

Persistent storage is available in the `../geoblacklight/tmp` `VOLUME`. Generally, it is recommended to use a data container for persistent storage:

    $ docker run --name app_gbl_data  -d geoblacklight/geoblacklight /bin/true
    $ docker run --name app_gbl  -d -p 3000:3000 --link app_solr:solr --volumes-from app_gbl_data geoblacklight/geoblacklight

Load test data:

    $ docker exec app_gbl rake geoblacklight:solr:seed