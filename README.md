

# Docker images for building GeoBlacklight application stack


### Docker ~> 1.3

	$ docker run --name app_solr -d -p 8983 geoblacklight/solr
	$ docker run --name app_gbl  -d -p 3000:3000 --link app_solr:solr geoblacklight/geoblacklight

To load test data:

	$ docker exec app_gbl rake geoblacklight:solr:seed

### Docker < 1.3

Empty solr index:

	$ docker run --name app_solr -d -p 8983 geoblacklight/solr
	$ docker run --name app_gbl  -d -p 3000:3000 --link app_solr:solr geoblacklight/geoblacklight

Solr with test data:

	$ docker run --name app_solr -d -p 8983 geoblacklight/solr
	$ docker run --name app_gbl  -d -p 3000:3000 --link app_solr:solr geoblacklight/geoblacklight /bin/bash load_test_data.sh
