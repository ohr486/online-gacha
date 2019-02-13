#!/bin/bash

RAILS_ENV=production bundle exec rake assets:clean
RAILS_ENV=production bundle exec rake assets:clobber
RAILS_ENV=production bundle exec rake assets:precompile
bundle exec unicorn_rails -c config/unicorn.rb -E production -D
