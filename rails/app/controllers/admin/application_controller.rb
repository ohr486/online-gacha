class Admin::ApplicationController < ApplicationController
  http_basic_authenticate_with name: ENV["BASIC_ID"], password: ENV["BASIC_PASS"] if Rails.env.production?
end
