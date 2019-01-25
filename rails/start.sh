#!/bin/bash

bundle exec rake assets:precompile
bundle exec unicorn_rails -c config/unicorn.rb -E production -D
