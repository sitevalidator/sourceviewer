require 'sinatra'
require 'open-uri'
require 'open_uri_redirections'

set :show_exceptions, false

get '/show' do
  @url    = params[:url]
  @source = open(@url, allow_redirections: :all, "User-Agent" => user_agent).read
  @theme  = pick_theme

  erb :show
end

get '/read' do
  @url    = params[:url]
  @source = open(@url, allow_redirections: :all, "User-Agent" => user_agent).read

  erb :read
end

get '/500' do
  return "SORRY! We could not process this page."
end

error 500 do
  redirect to('/500')
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

# Takes the theme if available, or uses the default
def pick_theme
  highlight_themes.include?(params[:theme]) ? params[:theme] : 'default'
end

# Available themes from http://cdnjs.com/libraries/highlight.js/
def highlight_themes
  %w(arta ascetic brown_paper dark default docco far foundation github
     googlecode idea ir_black magula mono-blue monokai monokai_sublime obsidian
     pojoaque railscasts rainbow school_book solarized_dark solarized_light
     sunburst tomorrow-night-blue tomorrow-night-bright tomorrow-night-eighties
     tomorrow-night tomorrow vs xcode zenburn)
end
