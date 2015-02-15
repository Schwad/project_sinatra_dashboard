require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'json'
require 'mechanize'
require 'pry'
require './helpers/schwaddyhelper.rb'

# require_relative 'weatherday'

set :server, "webrick"
helpers Schwaddyhelper
include Schwaddyhelper

enable :sessions

#put all needed methods in schwaddyhelper module
# #DON'T GOOF AROUND W CLASSES SCHWAD

get '/' do
  @my_weather = Weather.new("Missoula, MT")
  @my_individualized_weather = @my_weather.ten_day_forecast
  
  #this is temporary
  @ebay_search = InHouseEbay.new("pokemon", 400)
  @ebay_results = @ebay_search.all_items
  
  erb :index
end

post '/ebay' do
  #user inputs last

end
