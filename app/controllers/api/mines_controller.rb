class Api::MinesController < ApplicationController
  # GET /api/mines
  def index
    @mines = Mine.all

    render json: @mines.to_json(:include =>  :trips )
  end

  def show
    @mine = Mine.find(params[:id])
    render json: @mine.to_json(:include =>  :trips )

  end

  def create
    @mine = Mine.new(mine_create_params)
    if @post.save
      redirect_to city_show_path(@city.id)
    else
      render :new
    end

    def update
      @mine = Mine.find(params[:id])

      if @mine.update(mine_update_params)
        render json: @mine
      else
        render json: @mine.errors.messages, status: :bad_request
      end
    end

    def mine_create_params
      params.require(:post)
          .permit(:title, :content)
          .merge(user_id: current_user.id, city_id: params[:city_id])
    end

  end


end