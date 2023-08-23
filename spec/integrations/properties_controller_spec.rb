require 'swagger_helper'

RSpec.describe 'api/v1/properties', type: :request do
  path '/api/v1/properties' do
    get('list of properties') do
      tags 'properties'
      consumes 'application/json'
      response(200, 'return list of all properties') do
        let(:Authorization) { 'Bearer lorem' }
        run_test!
      end
    end
  end

 

end
