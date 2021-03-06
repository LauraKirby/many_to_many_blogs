class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
  def index
  	@posts = Post.all 
  end

  def new
  	@post = Post.new
  	@tags = Tag.all 
  end

  def create 
  	@post = Post.create(post_params)
  	if @post.save
  		redirect_to posts_path, notice: 'Post has been saved'
  	else 
  		render :new
  	end 
  end 

  def show
  end

  def edit
  end

  def update
    @post.update post_params
    if @post.save 
      redirect_to posts_path 
    else 
      render :edit
    end 
  end 

  def delete
  end



private

  def post_params
    params.require(:post).permit(:title, :content, :author)
  end

  def find_post
    @post = Post.find params[:id]
  end 

end #end posts controller