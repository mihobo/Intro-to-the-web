require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "hello!"
end

get '/cat' do
  erb(:index)
end

get '/secret' do
  "For my eyes only!"
end
