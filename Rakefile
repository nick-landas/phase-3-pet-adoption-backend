require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc 'Runs a pry console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)

  Pry.start
end
