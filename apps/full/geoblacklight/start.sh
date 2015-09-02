sleep 30
rake db:migrate
unicorn_rails -c config/unicorn.rb