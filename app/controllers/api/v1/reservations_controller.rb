# frozen_string_literal: true

require_relative '../../concerns/render_helper'

class Api::V1::ReservationsController < ApiController
  include RenderHelper

  # POST /reservations
  def create
    @new_reservation = current_user.reservations.new(city: params[:city], date_of_visit: params[:date], property_id: params[:property_id])

    create_helper(@new_reservation, 'Reservation created')
  end
end