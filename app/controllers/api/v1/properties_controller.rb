require_relative '../../concerns/render_helper'

class Api::V1::PropertiesController < ApplicationController
  include RenderHelper

  skip_before_action :verify_authenticity_token, only: :create

  def index
    @properties = Property.all
    render json: @properties
  end

  def create
    @new_property = Property.new(name: params[:name], image: params[:image], price: params[:price], location: params[:location])
    create_helper(@new_property, 'Property created succesfully')
  end
end
