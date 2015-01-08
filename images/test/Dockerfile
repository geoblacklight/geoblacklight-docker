FROM geoblacklight/base-rails

MAINTAINER Eliot Jordan <eliot.jordan@gmail.com>

# Install PhantomJS for testing
RUN npm install -g phantomjs

WORKDIR /usr/src

# Preload gems
RUN git clone https://github.com/geoblacklight/geoblacklight.git && \
	cd geoblacklight && \
	bundle install && \
	rake engine_cart:generate && \
	cd .. && \
	rm -r geoblacklight

# Add script that loads in test data
ADD run_tests.sh /usr/src/run_tests.sh

EXPOSE 3000

CMD ["/bin/bash"]