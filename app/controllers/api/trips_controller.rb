class Api::TripsController < ApplicationController
  # GET /api/trips
  def index
    @trips = Trip.all
  # render json: @trips
    render json: @trips.to_json(:include => :users )

  end

  def show
    @trip = Trip.find(params[:id])
    render json: @trip.to_json(:include =>  :users )

  end

  def update

    @trip = Trip.find(params[:id])

    if @trip.update(trip_params)
      render json: @trip, status: :ok
    else
      render json: @trip.error, status: :unprocessable_entity
    end
  end

  def create
    @trip = Trip.new(new_trip_params)
    if @trip.save
      render json: @trip, status: :created
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @trip = Trip.find(params[:id])

    @trip.destroy

    render json: '', status: :no_content
  end

  private
  def trip_params
    params
        .permit(:date, :description)

  end

  def new_trip_params
    params.require(:trip)
        .permit(:date, :description)
        .merge(user_id: current_user.id)
  end


end