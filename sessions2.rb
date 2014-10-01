require 'sinatra'
require 'sinatra/reloader' if development?

# Note that enable :sessions actually stores all data in a cookie.
# This might not always be what you want (storing lots of data will
# increase your traffic, for instance). You can use any Rack session
# middleware: in order to do so, do not call enable :sessions, but
# instead pull in your middleware of choice as you would any other
# middleware:
use Rack::Session::Pool, :expire_after => 2592000

get '/' do
  session[:value] = 0 unless session.has_key? :value
  puts session[:value].inspect
  erb :tutu
end

get '/:value' do
  session[:value] = params[:value]
  erb :tutu
end
__END__
@@tutu
  value = <%= session[:value] %><br/>
  Go to <a href="/">Home</a><br/>
  Go to <a href="/37">37</a>
