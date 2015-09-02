solr start

# Add test data
cd /tmp && \
	curl -L https://github.com/geoblacklight/geoblacklight/archive/v${GBL_VERSION}.tar.gz | \
	tar xz && \
	cp -R /tmp/geoblacklight-${GBL_VERSION}/spec/fixtures/solr_documents /opt/solr-5.2.1/. && \
	rm -rf geoblacklight-${GBL_VERSION}/  && \
	cd -

#!/bin/bash
for f in solr_documents/*.json; do
	curl -X POST -H 'Content-Type: application/json' 'http://0.0.0.0:8983/solr/geoblacklight/update/json/docs?commit=true' --data-binary @$f
done

solr stop
solr start -f