require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    original_string = params["string"]
    reversed_string = original_string.reverse
    erb :reversed
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    #write your code here
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
    erb :friends
  end

end