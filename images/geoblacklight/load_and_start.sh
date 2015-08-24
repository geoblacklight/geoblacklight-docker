sleep 15
rake geoblacklight:solr:seed
unicorn_rails -c config/unicorn.rb