class PostsController < ApplicationController
  def index
  	@posts = Post.all 
  end

  def new
  	@post = Post.new
  	@tags = Tag.all 
  end

  def create 
  	@post = Post.create(posts_params)
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
  end 

  def delete
  end

end


private

 def posts_params
		params.require(:post).permit(:title, :content, :author)
 end