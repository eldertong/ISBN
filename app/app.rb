require 'sinatra'
require_relative "isbnv2.rb"
#require any gems
get '/' do 
	erb :welcome
end

post '/name' do
	name = params[:input_name]
	redirect '/age?input_name=' + name
end

get '/fav_nums' do
	age = params[:age]
	name = params[:input_name]

	erb :fav_nums, :locals => {:name => name, :age => age}

end

post '/fav_nums' do
	age = params[:age]
	name = params[:input_name]
	favnum1 = params[:num1]
	favnum2 = params[:num2]
	favnum3 = params[:num3]

get '/contact' do
	erb :contact
end

get '/about' do
	erb :about
end