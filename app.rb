require 'sinatra'
require 'open-uri'
require 'open_uri_redirections'

get '/show' do
  @url    = params[:url]
  @source = open(@url, allow_redirections: :all, "User-Agent" => user_agent).read

  erb :show
end

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end
end

private

def user_agent
  params[:user_agent] || default_user_agent
end

def default_user_agent
  "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36"
end