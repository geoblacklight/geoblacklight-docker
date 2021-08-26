# Solr Docker

This directory contains a Dockerfile that serves as the base docker image for running Solr in CI and Lando.

This image adds:
- a security.json file which allows us to make changes to solr via basic auth. It runs with an embedded zookeeper on a separate port.
- scripts for solr setup in CI and lando.
- Java Topology Suite plugin

### Update and Rebuild

You must have an account under the GeoBlacklight dockerhub organization to push to
dockerhub.

To update and rebuild the image:

```bash
docker login # login to docker hub
docker build -t geoblacklight/solr:{solr version}-{Dockerfile version} .
docker push geoblacklight/solr:{solr version}-{Dockerfile version}
```

```bash
docker login # login to docker hub
docker build -t geoblacklight/solr:8.9-v1.0.0 .
docker push geoblacklight/solr:8.9-v1.0.0
```
