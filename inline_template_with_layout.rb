require 'sinatra'
require 'sinatra/reloader' if development?

# If a template named 'layout' exists, it will be used each time a
# template is rendered. You can individually disable layouts by passing
#             :layout => false 
# or disable them by default via 
#             set :haml, :layout => false

set :haml, :layout => false if ARGV.length > 0

get '/' do
  haml :index
end

get '/nolayout' do
  haml :index, :layout =>false
end

__END__

@@ layout
%html
  <h1>A Simple Layout</h1>
  = yield

@@ index
%div.title Hello world.
