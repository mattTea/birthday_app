require "sinatra/base"

class Birthday < Sinatra::Base
  get "/" do
    # "Infrastructure working!"
    erb(:index)
  end

  run! if app_file ==$0
end

# To run (one or the other...)
# ruby app.rb
# rackup -p 4567