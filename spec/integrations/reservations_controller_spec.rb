require 'swagger_helper'

RSpec.describe 'api/v1/reservations', type: :request do
  path '/api/v1/reservations' do
    get('list reservations') do
      tags 'reservations'
      consumes 'application/json'
      response(401, 'return a list of all reservations') do
        let(:Authorization) { 'Bearer lorem' }
        run_test!
      end
    end
  end
  
end





