class Api::UsersController < ApplicationController
  # before_action :authenticate_user!, only: [:profile, :edit]
  # before_action :user_params, only: [:show]
  def show
    @user = User.find(params[:id])
    # render json: @user.to_json(:include =>  :posts )
    render formats: :json
  end

  def edit

  end

  def update

  end

  def index
    # @user = current_user
    @users = User.all
    render json: @users.to_json(include: :posts)
  end

  def profile

    # THIS WORKS Returns the current user object, however, the api call doesn't seem to be reaching this!
    @user = User.find(current_user.id)
    render json: @user.to_json(:include =>  :posts )
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