class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
      @user = User.new(user_params)
      if current_user == @user
          if @user.save
            redirect_to @user
          else
            render 'new'
          end
      else
          redirect_to users_path
      end
  end

  def new
    if current_user == @user
        @user = User.new
    else
        redirect_to users_path
    end
  end

  def edit
      @user = User.find(params[:id])
      if current_user != @user
          redirect_to users_path
      end
  end

  def show
      @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if current_user == @user
        if @user.update(user_params)
          redirect_to @user
        else
          render 'edit'
        end
    else
        redirect_to users_path
    end
  end

  def destroy
      @user = User.find(params[:id])
      if current_user == @user
          @user.destroy
      else
          redirect_to users_path
      end
  end

  private

  def user_params
    params.require(:user).permit(:first_name,:last_name)
  end
end
