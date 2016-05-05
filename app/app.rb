ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require_relative 'models/link'
require_relative 'models/data_mapper_setup'

class BookmarkManager < Sinatra::Base

  # get '/' do
  #   erb :index
  # end

  get '/links' do
    @links = Link.all
    erb :links
  end

  post '/links' do
    link = Link.new( title: params[:title], url: params[:url])
    tag = Tag.create( name: params[:tags])
    link.tags << tag
    link.save
    redirect '/links'
  end

  get '/links/new' do
    erb :new
  end

  get '/links/tags/:name' do
    @links = Tag.all(name: params[:name]).links
    erb :links
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
