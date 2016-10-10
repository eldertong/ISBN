require 'sinatra'
require_relative "isbnv2.rb"
#require any gems
get '/' do 
	erb :whats_your_name
end

post '/name' do
	name = params[:input_name]
	redirect '/age?input_name=' + name

end