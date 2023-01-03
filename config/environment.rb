ENV['RACK_ENV'] ||= 'development'

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

require './app/controllers/application_controller'
require_all 'app'
# require 'active_record'
# require 'sinatra'
# require 'sqlite3'


