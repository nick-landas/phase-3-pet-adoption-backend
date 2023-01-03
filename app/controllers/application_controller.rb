class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  configure do
    set :views, 'app/views'
  end

  require 'erb'

  # Add routes
  get '/' do
  end
end
