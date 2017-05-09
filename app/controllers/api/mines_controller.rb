class Api::MinesController < ApplicationController
  # GET /api/mines
  def index
    @mines = Mine.all

    render json: @mines.to_json(:include =>  :trips )
  end

  def create
    @mine = Mine.new(mine_create_params)
    if @post.save
      redirect_to city_show_path(@city.id)
    else
      render :new
    end

    def mine_create_params
      params.require(:post)
          .permit(:title, :content)
          .merge(user_id: current_user.id, city_id: params[:city_id])
    end

  end


end