#!/bin/bash


set -e


bundle install
yarn install
bundle exec rails db:create db:migrate db:seed
# bundle exec curl -sL https://deb.nodesource.com/setup_16.x | bash
# bundle exec apt-get install -y nodejs
rm -rf tmp/pids/server.pid


exec "$@"