class Api::HoundsController < ApplicationController
  def show
    @posts = @user.posts
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_update_params)
      redirect_to user_profile_path
    else
      render :edit
    end
  end

  def index
    # @user = current_user
    @users = User.all
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