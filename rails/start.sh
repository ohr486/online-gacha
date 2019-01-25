#!/bin/bash

bundle exec rake assets:clean
bundle exec rake assets:clobber
bundle exec rake assets:precompile
bundle exec unicorn_rails -c config/unicorn.rb -E production -D
