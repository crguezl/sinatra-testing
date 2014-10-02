require 'sinatra'
require 'sinatra/reloader' if development?
#Use the top-level helpers method to define helper methods for use in route handlers and templates:

helpers do
  def bar(name)
    "inside method bar. param = #{name}"
  end
end

get '/:name' do
  bar(params[:name])
end
