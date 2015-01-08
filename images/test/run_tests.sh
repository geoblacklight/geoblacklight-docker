FIRST="$1"
SECOND="$2"

if [ "$FIRST" = "--local" ]
then
        cd geoblacklight
        if [ -z  "$SECOND" ]
         then
                echo "using master branch"
        else
                git fetch "$SECOND"
                git checkout "$SECOND"
        fi
else
        git clone https://github.com/geoblacklight/geoblacklight.git
        cd geoblacklight
        if [ -z  "$FIRST" ]
         then
                echo "using master branch"
        else
                echo "$FIRST"
                git checkout "$FIRST"
        fi
fi

bundle install
bundle exec rake jetty:download jetty:unzip
bundle exec rake geoblacklight:configure_jetty
bundle exec rake engine_cart:generate
bundle exec rake jetty:start
sleep 30
cd spec/internal
bundle exec rake geoblacklight:solr:seed
cd -
bundle exec rake ci
cd spec/internal
rails server -b 0.0.0.0