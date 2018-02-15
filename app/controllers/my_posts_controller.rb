class MyPostsController < ApplicationController
    before_action :authenticate_user!,only:["new","create","update","edit","destroy","post_params"]


    def new
        @post = MyPost.new
        @post.user = current_user
    end

    def create
        @post = MyPost.new(post_params)
        @post.user = current_user
        if @post.save
            redirect_to user_my_post_path(@post.user,@post)
        else
            render 'new'
        end
    end

    def show
      @post = MyPost.find(params[:id])
    end

    def edit
      @post = MyPost.find(params[:id])
      redirect_to user_my_posts_path if !@post.user == current_user
    end

    def update
      @post = MyPost.find(params[:id])
      redirect_to user_my_posts_path if !@post.user == current_user
      if @post.update(post_params)
        redirect_to user_my_post_path(@post.user,@post)
      else
        render 'edit'
      end
    end

    def index
      @posts = MyPost.all.paginate(:page => params[:page], :per_page => 3)
    end

    def destroy
      @post = MyPost.find(params[:id])
      redirect_to user_my_posts_path if !@post.user == current_user
      @post.destroy
      redirect_to user_my_posts_path
    end

    def post_params
      params.require(:my_post).permit(:title,:article,:picture,:user_id)
    end

end
