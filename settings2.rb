# Test scopes and settings
require 'sinatra'
require "sinatra/reloader" if development?
require 'json'

configure do
  set :foo, 'bar' => 1, 'chum' => 2
end

get '/' do
  content_type :json
  puts settings.foo? # => true
  puts settings.foo  # => 'bar'
  settings.foo.to_json
end
