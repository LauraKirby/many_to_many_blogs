class PostsController < ApplicationController
  def index
  	@posts = Post.all 
  end

  def new
  	@post = Post.new
  	@tags = Tag.all 
  end

  def create 
  end 

  def show
  end

  def edit
  end

  def update
  end 

  def delete
  end

end
