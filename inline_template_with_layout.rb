require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  haml :index
end

__END__

@@ layout
%html
  = yield

@@ index
%div.title Hello world.
