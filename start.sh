#!/bin/sh

set -e

echo "Environment: $RAILS_ENV"

# install missing gems
bundle check || bundle install --jobs 20 --retry 5

bundle exec rake db:migrate || echo "Can't run migrations"

# Remove pre-existing puma/passenger server.pid
rm -f ./tmp/pids/server.pid

# run passed commands
bundle exec rails s -p 3000 -b 0.0.0.0