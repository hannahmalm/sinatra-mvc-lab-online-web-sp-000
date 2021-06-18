require 'pry'
require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base
  get '/' do 
    erb :user_input 
  end 
  
  post '/piglatinize' do
    @piglatinizer = PigLatinizer.new(params[:user_input])
    erb :user_input
    erb :display  
  end
end