class Api::HoundsController < ApplicationController
  def show
    @posts = @user.posts
  end

  def edit

  end

  def update

  end

  def index
    # @user = current_user
    @users = User.includes(:posts)
    render json: @users
  end

  def profile
    @user = current_user
    @posts = @user.posts
  end


  private
  def user_params
    @user = User.find(params[:user_id])
  end

  def user_update_params
    params.require(:user)
        .permit(:username, :email, :bio, :avatar_url, :location)
  end



end