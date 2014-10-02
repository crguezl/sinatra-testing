require 'sinatra'
require 'sinatra/reloader' if development?
#Use the top-level helpers method to define helper methods for use in route handlers and templates:

module FooUtils
  def foo(name) "#{name}foo" end
end

module BarUtils
  def bar(name) "#{name}bar" end
end

helpers FooUtils, BarUtils

get '/bar/:name' do
  bar(params[:name])
end

get '/foo/:name' do
  foo(params[:name])
end
