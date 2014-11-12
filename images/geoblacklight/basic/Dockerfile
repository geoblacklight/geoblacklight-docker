FROM geoblacklight/base-blacklight

MAINTAINER eliotj@princeton.edu

WORKDIR /usr/src

#  Bootstrap a new GeoBlacklight Rails application
RUN rails new rails-app -m https://raw.githubusercontent.com/geoblacklight/geoblacklight/master/template.rb

WORKDIR /usr/src/rails-app

# Install unicorn
RUN gem install unicorn

# Setup Unicorn
COPY  unicorn.rb /usr/src/rails-app/config/unicorn.rb
RUN mkdir /var/www && mkdir /var/www/gbl && mkdir /var/www/gbl/pids && mkdir /var/www/gbl/log/

# Add default env variable referencing our solr container
# Depends on --link my_solr_container:solr

ENV SOLR_URL http://solr:8983/solr

EXPOSE 3000
CMD unicorn_rails -c config/unicorn.rb
