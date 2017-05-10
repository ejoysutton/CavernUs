class Api::MinesController < ApplicationController
  # GET /api/mines
  def index
    @mines = Mine.all

    render json: @mines.to_json(:include =>  { :trips => {
                                    :include =>  { :users => {
                                        :only => :username
                                    }
    }}} )
  end

  def show
    @mine = Mine.find(params[:id])
    # @posts = Post.find(params[:mine_id])
    # render json: @mine.to_json(:include =>  { :trips => {
    #     :include =>  { :users => { :only => :username }
    #     }}} )
    render json: @mine.to_json(:include =>  [ :posts, :trips => {
           :include =>  :users
           }] )

    # render json: {mine: @mine, posts: @posts, trips: @trips, users: @users}

  end

  def update

    @mine = Mine.find(params[:id])

    if @mine.update(mine_params)
      render json: @mine, status: :ok
    else
      render json: @mine.error, status: :unprocessable_entity
    end
  end

  def create
    @mine = Mine.new(new_mine_params)
    if @mine.save
      render json: @mine, status: :created
    else
      render json: @mine.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @mine = Mine.find(params[:id])

    @mine.destroy

    render json: '', status: :no_content
  end

private
  def mine_params
    params
        .permit(:name, :address, :description)

  end

  def new_mine_params
    params.require(:mine)
        .permit(:name, :address, :description)

  end


end