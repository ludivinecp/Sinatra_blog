require 'sinatra'
require 'haml'
require 'data_mapper'
require 'pry'
require 'json'
require 'better_errors'
require_relative 'helpers/comment.rb'

get "/" do
  @posts = Post.all
  @comments = Comment.all
  haml :index
end

post '/new/post' do
  Post.create params['post']
  redirect to('/')
end

post '/:id/new/comment' do
  Post.get(params[:id]).comments.create(params['comment'])
  redirect to('/')
end

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")

class Post

  include DataMapper::Resource

  before :save, :delete_space

  property :id,              Serial
  property :title,           String
  property :content,         String
  property :photo,           String
  property :rating,          Integer

  def delete_space
    self.photo = self.photo.strip!
  end
end

class Comment
  include DataMapper::Resource
  property :id,              Serial
  property :content,         String

end
DataMapper.finalize

