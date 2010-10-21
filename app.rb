$: << File.dirname(__FILE__)
require 'sinatra'
require 'haml'

set :haml, :format => :html5

get '/' do
  @localhost = `hostname`.strip
  haml :index
end
