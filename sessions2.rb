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

post '/chazam' do
  session[:value] = params[:value]
  erb :tutu
end

__END__
@@tutu
  value = <%= session[:value] %><br/>
  Go <a href="/">Home</a><br/>
  <form action="/chazam" method="post">
  Number: <input type="number" name="value"><br>
  <input type="submit" value="Submit">
  </form>
