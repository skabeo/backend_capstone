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
  path '/api/v1/reservations' do
    post 'Create reservation' do
      tags 'reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          city: { type: :string },
          date_of_visit: { type: :string },
          property_id: { type: :integer }
        },
        required: %w[city date_of_visit property_id]
      }
      response '401', 'reservations created' do
        let(:reservation) { { city: 'Accra', date_of_visit: '2023-09-09', property_id: 4 } }
        let(:Authorization) { 'Bearer lorem' }
        run_test!
      end

      response '401', 'Invalid request' do
        let(:reservation) { { city: 'Accra', date_of_visit: '2023-09-09', property_id: 4 } }
        let(:Authorization) { 'Bearer lorem' }
        run_test!
      end

      response '401', 'reservations created' do
        let(:reservation) { { city: 'Cotonou', date_of_visit: '2023-09-09', property_id: 5 } }
        let(:Authorization) { 'Bearer lorem' }
        run_test!
      end
    end
  end

end





