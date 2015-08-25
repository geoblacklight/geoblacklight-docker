solr start

#!/bin/bash
for f in solr_documents/*.json; do
	curl -X POST -H 'Content-Type: application/json' 'http://0.0.0.0:8983/solr/geoblacklight/update/json/docs?commit=true' --data-binary @$f
done

solr stop
solr start -f