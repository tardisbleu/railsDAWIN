class PostsController < ApplicationController
    def new
        @post = MyPost.new
    end
    def create
        @post = MyPost.new(photo_params)
        if @post.save
            redirect_to post_path(@post)
        else
            render 'new'
        end
    end

    def index
      @posts = MyPost.all
    end
end
