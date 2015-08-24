

## Docker Images for Building GeoBlacklight

The easiest way to to begin is to use the [docker-compose](https://docs.docker.com/compose/#compose-documentation) tool.

#### Requirements:

1. docker ~> 1.8
2. docker-compose ~> 1.2

#### Pull Images ####

	$ docker pull geoblacklight/solr
	$ docker pull geoblacklight/geoblacklight

#### Run application

	$ cd compose/basic/
	$ docker-compose up

#### http://{your_docker_host_ip}:3000/