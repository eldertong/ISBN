require 'sinatra'
require_relative "isbnv2.rb"
#require any gems
get '/' do 
	erb :welcome
end

post '/isbn' do
	isbn = params[:isbn]
	redirect '/result?isbn=' + isbn
end

get '/result' do
	isbn = params[:isbn]

	erb :fav_nums, :locals => {:isbn => isbn}

end

post '/fav_nums' do
	age = params[:age]
	name = params[:input_name]
	favnum1 = params[:num1]
	favnum2 = params[:num2]
	favnum3 = params[:num3]
end

get '/contact' do
	erb :contact
end

get '/about' do
	erb :about
end