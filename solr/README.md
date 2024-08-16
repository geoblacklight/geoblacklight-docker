# Solr Docker

This directory contains a Dockerfile that serves as the base docker image for running Solr in CI and Lando.

This image adds:
- a security.json file which allows us to make changes to solr via basic auth. It runs with an embedded zookeeper on a separate port.
- scripts for solr setup in CI and lando.
- Java Topology Suite plugin
