#!/bin/bash
sudo service postgresql start  
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'postgres'"
cd /report
rake db:create
rake db:migrate
bundle exec rails s -d -p 3000
sudo service nginx start
while true; do echo hello world; sleep 1; done  
