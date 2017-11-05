class PostsController < ApplicationController


def index
    @posts = Post.all
    @post = Post.new
end

def create
    Post.create(post_params)
    @posts = Post.all
end

 def destroy
    Post.find(params[:id]).destroy
    @posts = Post.all
  end


  private
  def post_params
    params.require(:post).permit(:post)
  end
end




