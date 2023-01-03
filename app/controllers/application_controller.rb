class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  configure do
    set :views, 'app/views'
  end
  
  # Agdd routes
  get '/' do
    erb :welcome
  end
end
