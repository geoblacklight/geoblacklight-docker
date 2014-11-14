FROM geoblacklight/base-rails

MAINTAINER Eliot Jordan <eliot.jordan@gmail.com>

# generate new rails app
WORKDIR /usr/src
RUN apt-get update && apt-get -y install libsqlite3-dev libpq-dev

# Clone geoblacklight repo and geoblacklight-schema submodule
RUN git clone --recurse https://github.com/geoblacklight/geoblacklight.git

# Install time-consuming dependencies
WORKDIR /usr/src/geoblacklight
RUN bundle
RUN gem install unicorn

# Remove app
RUN rm -rf /usr/src/geoblacklight/