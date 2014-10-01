# Test scopes and settings
require 'sinatra'
require "sinatra/reloader" if development?
@a = 4
@@b = 5

configure do
  set :foo, 'bar'
end

get '/' do
  puts settings.foo? # => true
  puts settings.foo  # => 'bar'
  puts "@a = -#{@a}-" # @a can not be accessed
  puts "@@b = -#{@@b}-" # -5- @@b can be accessed
  settings.foo
end
