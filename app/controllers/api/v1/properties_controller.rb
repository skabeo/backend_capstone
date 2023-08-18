class Api::V1::PropertiesController < ApiController
  def index
    @properties = Property.all
    render json: @properties
  end
end
