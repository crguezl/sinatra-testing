require 'sinatra'
require 'sinatra/reloader' if development?
require 'pp'

before do
  @note = 'Hi!'
  request.path_info = '/foo/bar/baz'
end

get '/foo/*' do
  pp @note #=> 'Hi!'
  pp params[:splat] #=> 'bar/baz'
  "hello"
end
