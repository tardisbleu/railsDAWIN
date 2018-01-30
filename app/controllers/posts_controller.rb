class PostsController < ApplicationController
    def new
        @post = MyPost.new
    end
    def create

    end

    def index
      @posts = MyPost.all
    end
end
