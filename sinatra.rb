require 'sinatra'

get '/' do
  "Hello, World!"
end

get '/about' do
  'A little about me'
end

get '/hello/:name/' do
  "Hi there #{params[:name].capitalize}"
end

get '/hello/:name/:city' do
  "Hi there #{params[:name].capitalize} from #{params[:city].capitalize}"
end

get '/more/*' do
  params[:splat]
end

get '/duck' do
  "Go duck your!"
end
