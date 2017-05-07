class Api::MinesController < ApplicationController
  # GET /api/mines
  def index
    @mines = Mine.all

    render json: @mines
  end
end