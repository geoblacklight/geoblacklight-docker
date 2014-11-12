FROM geoblacklight/baseimage

# Adapted from quirky/rails and quirky/ruby with some minor tweaks.
# Micah Martin <micahlmartin@gmail.com>

MAINTAINER Eliot Jordan <eliot.jordan@gmail.com>

RUN apt-get update && apt-get upgrade -y && \
  apt-get -y install \
    build-essential \
    libcurl4-openssl-dev \
    libreadline-dev \
    libssl-dev \
    libxml2-dev \
    libxslt1-dev \
    libyaml-dev \
    zlib1g-dev \
    software-properties-common \
    python-software-properties

RUN curl -O http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz && \
      tar -zxvf ruby-2.1.2.tar.gz && \
      cd ruby-2.1.2 && \
      ./configure --disable-install-doc && \
      make && \
      make install && \
      cd .. && \
      rm -r ruby-2.1.2 ruby-2.1.2.tar.gz && \
      echo 'gem: --no-document' > /usr/local/etc/gemrcdoc

# Bundler
RUN gem install bundler --version=1.6.2

# Rails
RUN gem install --no-ri --no-rdoc rails --version=4.0.0

# scss-lint
RUN gem install scss-lint

# Nodejs
RUN apt-add-repository ppa:chris-lea/node.js -y && \
    apt-get update -y && \
    apt-get install nodejs -y

# Nodejs tools
RUN npm install -g bower
RUN npm install -g grunt-cli
RUN npm install -g gulp

# PostgreSQL client
RUN apt-get install libpq-dev -y
RUN apt-get install postgresql-client -y

# Mysql client
RUN apt-get install mysql-client libmysqlclient-dev -y

CMD ["/bin/bash"]