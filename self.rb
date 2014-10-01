# Test self y class inside a route
require 'sinatra'
require "sinatra/reloader" if development?
require 'pp'

get '/' do
  puts "***************class*********************"
  p self.class # Sinatra::Application
  puts "**************self***********************"
  pp self
  puts "************settings*********************"
  pp settings
  puts "*****************************************"
  "hello"
end

