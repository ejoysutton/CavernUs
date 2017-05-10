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

    else

    end

    def update
      @mine = Mine.find(params[:id])

      if @mine.update(mine_update_params)
        redirect_to @mine, notice: 'Mine was successfully updated.'
      else
        render :edit
      end
    end

    def mine_create_params
      params.require(:mine)
          .permit(:name, :address, :description)

    end

  end


end