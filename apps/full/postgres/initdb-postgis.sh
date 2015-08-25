#!/bin/sh

set -e

# Perform all actions as user 'postgres'
export PGUSER=postgres

# Create the 'template_postgis' template db
psql <<EOSQL
CREATE DATABASE template_postgis;
UPDATE pg_database SET datistemplate = TRUE WHERE datname = 'template_postgis';
EOSQL

# Populate 'template_postgis'
cd /usr/share/postgresql/$PG_MAJOR/contrib/postgis-$POSTGIS_MAJOR
psql --dbname template_postgis < postgis.sql
psql --dbname template_postgis < topology.sql
psql --dbname template_postgis < spatial_ref_sys.sql

# Create geodata and geoblacklight db
psql <<EOSQL
CREATE DATABASE geodata;
CREATE DATABASE geoblacklight;
EOSQL

# Set up geodata
psql -d geodata -c "CREATE EXTENSION postgis;"
psql -d geodata -c "CREATE EXTENSION postgis_topology;"

# Load shapefiles
shp2pgsql -s 4326 /root/shapefiles/massgis-hospitals-pt-shapefile/GISDATA_HOSPITALS_PT public.GISDATA_HOSPITALS_PT | psql -d geodata
shp2pgsql -s 4326 /root/shapefiles/tufts-utcounties10-shapefile/GISPORTAL_GISOWNER01_UTCOUNTIES10 public.UTCOUNTIES10 | psql -d geodata