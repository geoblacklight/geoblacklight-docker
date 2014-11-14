FROM geoblacklight/base-blacklight

MAINTAINER Eliot Jordan <eliot.jordan@gmail.com>

WORKDIR /usr/src

#  Bootstrap a new GeoBlacklight Rails application
RUN rails new rails-app -m https://raw.githubusercontent.com/geoblacklight/geoblacklight/master/template.rb

WORKDIR /usr/src/rails-app

# Install unicorn
RUN gem install unicorn

# Setup Unicorn
ADD  unicorn.rb /usr/src/rails-app/config/unicorn.rb
RUN mkdir /var/www && mkdir /var/www/gbl && mkdir /var/www/gbl/pids && mkdir /var/www/gbl/log/

# Add default env variable referencing our solr container
# Depends on --link my_solr_container:solr
ENV SOLR_URL http://solr:8983/solr

# Add script that loads in test data
ADD load_and_run.sh /usr/src/rails-app/load_and_run.sh

EXPOSE 3000

CMD unicorn_rails -c config/unicorn.rb

