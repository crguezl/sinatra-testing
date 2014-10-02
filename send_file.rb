require 'sinatra'
require 'sinatra/reloader' if development?

#For sending files, you can use the send_file helper method:

get '/' do
  send_file 'foo.png'
end

#It also takes options:

get '/chazam' do
  send_file 'foo.png', :type => :jpg
end

#The options are:
#
#filename
#  file name, in response, defaults to the real file name.
#last_modified
#  value for Last-Modified header, defaults to the file's mtime.
#type
#  content type to use, guessed from the file extension if missing.
#disposition
#  used for Content-Disposition, possible value: nil (default), :attachment and :inline
#  The Content-Disposition response-header field has been proposed as a means for the origin server to suggest a default filename if the user requests that the content is saved to a file. 
#length
#  Content-Length header, defaults to file size.
#status
#  Status code to be sent. Useful when sending a static file as an error page. If supported by the Rack handler, other means than streaming from the Ruby process will be used. If you use this helper method, Sinatra will automatically handle range requests.

