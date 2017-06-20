require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "hello!"
end

get '/random-cat' do
  @name_generator = ["Victor", "Sam", "Melanie", "美穂"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name_generator = params[:name]
  erb(:index)
end

get '/cat-form' do
  p params
  @name_generator = params[:name]
  erb(:form)
end

get '/secret' do
  "For my eyes only!"
end
