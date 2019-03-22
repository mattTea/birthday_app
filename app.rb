require "sinatra/base"
require "date"

class Birthday < Sinatra::Base

  enable :sessions

  get "/" do
    # "Infrastructure working!"
    erb(:index)
  end

  post "/details" do
    session[:name] = params[:name]
    session[:birthday] = params[:birthday]
    if session[:birthday] == "" || session[:name] == ""
      redirect("/error")
    else
      redirect("/message")
    end
  end

# Next piece of work -> refactor below out to a class (model)

  get "/message" do
    @name = session[:name]
    @birthday = session[:birthday]
    today = DateTime.parse(Time.now.strftime("%F")).to_date
    parsed_birthday = DateTime.parse(@birthday).to_date
    if parsed_birthday.strftime("%m" "%d") >= Time.now.strftime("%m" "%d")
      countdown_birthday = Time.new(Time.now.year, parsed_birthday.month, parsed_birthday.day)
    else
      countdown_birthday = Time.new(Time.now.year + 1, parsed_birthday.month, parsed_birthday.day)
    end
    parsed_countdown_birthday = countdown_birthday.to_date
    @countdown = (parsed_countdown_birthday - today).to_i

    erb(:message)
  end

  get "/error" do
    erb(:error)
  end

  run! if app_file ==$0
end

# To run (one or the other...)
# ruby app.rb
# rackup -p 4567
