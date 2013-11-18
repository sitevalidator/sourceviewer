require 'sinatra'
require 'open-uri'
require 'open_uri_redirections'

get '/show' do
  @url    = params[:url]
  @source = open(@url, allow_redirections: :all).read

  erb :show
end

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end
end
