# GeoServer Docker Image for GeoBlacklight

## To update or add layers:
1. Run geoserver and mount geoserver_data directory
    ```
      docker run -it -p8080:8080 \
        --mount type=bind,src=./geoserver_data,target=/opt/geoserver_data \
            docker.osgeo.org/geoserver:2.25.3
    ```
1. Open localhost:8080/geoserver and login:
  - user: admin
  - pass: geoserver
1. Add any new data to the local geoserver_data/data/ directory
1. Update, add, or remove layers in the GeoServer UI.
