require 'bundler'
Bundler.require

ActiveRecord::Base::establish_connection(
  :adapter => 'postgresql',
  :database => 'insta'
)

### inta application!

get '/insta' do
  erb :insta
end
  
get '/' do
  erb :index
end

get '/1' do
  erb :one
end

get '/2' do
  erb :two
end

get '/3' do
  erb :three
end

get '/4' do
  erb :four
end

get '/5' do
  erb :five
end

get '/6' do
  erb :six
end

get '/7' do
  erb :seven
end

get '/8' do
  erb :eight
end

get '/9' do
  erb :nine
end

get '/10' do
  erb :ten
end

### Restful API

get '/api/insta' do
  InstagramModel.all.to_json
end

get '/api/insta/:id' do
  InstagramModel.find(params[:id]).to_json
end

post '/api/insta' do
  request_body = JSON.parse(request.body.read.to_s)
  InstagramModel.create(request_body).to_json

#binding.pry
#Stops the execution of our app and lets us use the console (terminal) to interact with this code block

end

put '/api/insta/:id' do
  request_body = JSON.parse(request.body.read.to_s)
  @id = params[:id]
  @insta = InstagramModel.find(@id)
  @insta.username = params[:username]
  @insta.post = params[:post]
  @insta.description = params[:description]
  @insta.hashtags = params[:hashtags]
  @insta.save
  @insta.to_json
end

patch '/api/insta/:id' do
  request_body = JSON.parse(request.body.read.to_s)
  @id = params[:id]
  @insta = InstagramModel.find(@id)
  @insta.username = params[:username]
  @insta.post = params[:post]
  @insta.description = params[:description]
  @insta.hashtags = params[:hashtags]
  @insta.save
  @insta.to_json
end


delete '/api/insta/:id' do
  InstagramModel.destroy(params[:id]).to_json
end
