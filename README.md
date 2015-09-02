

# Docker Images for Building GeoBlacklight

Test the application using the [docker-compose](https://docs.docker.com/compose/#compose-documentation) tool.

#### Requirements

```
docker toolbox ~> 1.8
```

or

```
docker ~> 1.8
docker-compose ~> 1.2
```

## Basic

#### Pull Images

	$ docker pull geoblacklight/solr
	$ docker pull geoblacklight/geoblacklight

#### Run with Compose

	$ docker-compose -f apps/basic/docker-compose.yml up -d

####  GeoBlacklight
```
http://{your_docker_host_ip}/
```

## Full Stack

#### Pull or Build Images
	
	$ ./scripts/pull.sh

	or

	$ ./scripts/build.sh

#### Run with Compose

	$ docker-compose -f apps/full/docker-compose.yml up -d
	
	  Wait 45 - 60 seconds for components to load. 
	
####  GeoBlacklight
```
http://{host_ip}/
```

#### Other Endpoints

- ```http://{host_ip}/geoserver```
 	- username: admin
    - password: geoserver
- ```http://{host_ip}/solr```
- ```http://{host_ip}/iiif```	