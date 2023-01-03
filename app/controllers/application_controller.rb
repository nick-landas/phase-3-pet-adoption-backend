class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

<<<<<<< HEAD
=======
  configure do
    set :views, 'app/views'
  end

  require 'erb'

  # Add routes
>>>>>>> refs/remotes/origin/main
  get '/' do
  end
end