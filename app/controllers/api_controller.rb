class ApiController < ApplicationController
  before_action :doorkeeper_authorize!

  skip_before_action :verify_authenticity_token

  respond_to :json

  private

  def current_user
    return unless doorkeeper_token

    @current_user || User.find_by(id: doorkeeper_token[:resource_owner_id])
  end
end
