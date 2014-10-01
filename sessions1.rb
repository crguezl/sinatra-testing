require 'sinatra'
require 'sinatra/reloader' if development?

#If activated, you have one session hash per user session:
enable :sessions
set :session_secret, rand.to_s

get '/' do
  session[:value] = 0 unless session.has_key? :value
  puts session[:value].inspect
  erb :tutu
end

get '/:value' do
  session[:value] = params[:value]
  erb :tutu
end
#Note that enable :sessions actually stores all data in a cookie.
__END__
@@tutu
  value = <%= session[:value] %><br/>
  Go to <a href="/">Home</a><br/>
  Go to <a href="/37">37</a>
