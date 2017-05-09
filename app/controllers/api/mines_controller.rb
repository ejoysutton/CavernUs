class Api::MinesController < ApplicationController
  # GET /api/mines
  def index
    @mines = Mine.all

    render json: @mines.to_json(:include =>  :trips )
  end
end