require 'sinatra'
require 'sinatra/reloader' if development?
require 'byebug'

#In the request scope, the logger helper exposes a Logger instance:

get '/' do
  byebug
  logger.info "loading data"
  "hello world!"
end
# See: http://www.ruby-doc.org/stdlib-2.1.2/libdoc/logger/rdoc/Logger.html
# The Logger class provides a simple but sophisticated logging
# utility that you can use to output messages.

# The messages have associated levels, such as INFO or ERROR that
# indicate their importance. You can then give the Logger a level,
# and only messages at that level or higher will be printed.

#This logger will automatically take your Rack handler’s logging
#settings into account. If logging is disabled, this method will
#return a dummy object, so you do not have to worry about it in your
#routes and filters.
#
#Note that logging is only enabled for Sinatra::Application by
#default, so if you inherit from Sinatra::Base, you probably want
#to enable it yourself:

class MyApp < Sinatra::Base
  configure :production, :development do
    enable :logging
  end
end
#To avoid any logging middleware to be set up, set the logging
#setting to nil. However, keep in mind that logger will in that case
#return nil. A common use case is when you want to set your own
#logger. Sinatra will use whatever it will find in env['rack.logger'].
