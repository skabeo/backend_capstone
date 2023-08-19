module Api
  module V1
    class UsersController < ApiController
      before_action :doorkeeper_authorize!
      before_action :current_user
      respond_to :json

      def me
        if @current_user.nil?
          render json: { error: 'Not authorized' }, status: :unauthorized
        else
          render json: {
            id: @current_user.id,
            name: @current_user.name,
            email: @current_user.email,
            role: @current_user.role,
            created_at: @current_user.created_at.iso8601
          }, status: :ok
        end
      end
    end
  end
end
