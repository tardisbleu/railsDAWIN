class MyPostsController < ApplicationController
    before_action :authenticate_user!
    def new
        @post = MyPost.new
    end
    def create
        @post = MyPost.new(post_params)
        @post.user = current_user
        if @post.save
            redirect_to my_post_path(@post)
        else
            render 'new'
        end
    end
    def show
      @post = MyPost.find(params[:id])
    end
    def edit
      @post = MyPost.find(params[:id])
      redirect_to my_posts_path if !@post.user == current_user
    end
    def update
      @post = MyPost.find(params[:id])
      redirect_to my_posts_path if !@post.user == current_user
      if @post.update(post_params)
        redirect_to my_post_path(@post)
      else
        render 'edit'
      end
    end

    def index
      @posts = MyPost.all
    end
    def destroy
      @post = MyPost.find(params[:id])
      redirect_to my_posts_path if !@post.user == current_user
      @post.destroy
      redirect_to my_posts_path
    end

    def post_params
      params.require(:my_post).permit(:titre,:date,:chapeau,:vignette,:auteur)
    end
end
