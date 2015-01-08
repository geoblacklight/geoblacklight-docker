FROM geoblacklight/baseimage

# Adapted from quirky/rails and quirky/ruby with some tweaks.
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
    git-core \
    software-properties-common \
    python-software-properties \
    libgdbm-dev \
    libncurses5-dev \
    automake \
    libtool \
    bison \
    libffi-dev

# Install Databases
RUN apt-get -y install \
  libpq-dev \
  postgresql-client \
  mysql-client \
  libmysqlclient-dev \
  libsqlite3-dev \
  sqlite3

RUN curl -O http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz && \
      tar -zxvf ruby-2.1.2.tar.gz && \
      cd ruby-2.1.2 && \
      ./configure --disable-install-doc && \
      make && \
      make install && \
      cd .. && \
      rm -r ruby-2.1.2 ruby-2.1.2.tar.gz && \
      echo 'gem: --no-ri --no-rdoc' > /usr/local/etc/gemrcdoc

# Bundler
RUN gem install bundler 

# Rails
RUN gem install --no-ri --no-rdoc rails --version=4.2.0

# scss-lint
RUN gem install scss-lint

# Nodejs
RUN apt-add-repository ppa:chris-lea/node.js -y && \
    apt-get update -y && \
    apt-get install nodejs -y

# Nodejs tools
RUN npm install -g bower && \
  npm install -g grunt-cli && \
  npm install -g gulp

CMD ["/bin/bash"]