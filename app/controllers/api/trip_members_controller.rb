class Api::TripMembersController < ApplicationController


  def create
    @trip_member = TripMember.new(new_trip_member_params)
    if @trip_member.save
      render json: @trip_member, status: :created
    else
      render json: @trip_member.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @trip_member = TripMember.find(params[:id])

    @trip_member.destroy

    render json: '', status: :no_content
  end

  private
  def trip_member_params
    params
        .permit(:user_id, :trip_id)

  end

  def new_trip_member_params
    params.require(:trip_member)
        .permit(:trip_id, :user_id)
        .merge(user_id: current_user.id)
  end


end