require_relative '../../concerns/render_helper'

class Api::V1::ReservationsController < ApiController
  include RenderHelper

  def index
    @reservations = current_user.reservations
    if @reservations
      render json: { success: true, message: 'Loaded all reservations', reservation: @reservations }, status: :ok
    else
      render json: { success: false, errors: 'Oops! Something went wrong' }, status: :unprocessable_entity
    end
  end

  # POST /reservations
  def create
    @new_reservation = current_user.reservations.new(city: params[:city], date_of_visit: params[:date], property_id: params[:property_id])

    create_helper(@new_reservation, 'Reservation created')
  end
end
