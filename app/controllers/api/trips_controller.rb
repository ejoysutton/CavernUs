class Api::TripsController < ApplicationController
  # GET /api/trips
  def index
    @trips = Trip.all
  render json: @trips
    # render json: @trips.to_json(include: :trip_members)
  end
end