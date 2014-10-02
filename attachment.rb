require 'sinatra'
require 'sinatra/reloader' if development?

# You can use the attachment helper to tell the browser the response should be stored on disk rather than displayed in the browser

get '/' do
  attachment
  "store it!"
end
#You can also pass it a file name:

get '/chazam' do
  attachment "info.txt"
  "chazam store it!"
end
