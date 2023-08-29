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

  path '/api/v1/properties' do
    post 'Create a property' do
      tags 'properties'
      consumes 'application/json'
      parameter name: :property, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          image: { type: :string },
          price: { type: :number },
          location: { type: :string }
        },
        required: %w[name image price location]
      }
      response '200', 'property created' do
        let(:property) { { name: 'Ile Oyo', image: 'https://image.com', rserve: false, price: 100_000, location: 'Oyo state' } }
        let(:Authorization) { 'Bearer lorem' }
        run_test!
      end

      response '200', 'property created' do
        let(:property) { { name: 'Ile Save', image: 'https://image.com', rserve: false, price: 100_000, location: 'Collines' } }
        let(:Authorization) { 'Bearer lorem' }
        run_test!
      end

      response '200', 'property created' do
        let(:property) { { name: 'Ile Kilibo', image: 'https://image.com', rserve: false, price: 100_000, location: 'Collines' } }
        let(:Authorization) { 'Bearer lorem' }
        run_test!
      end

      response '200', 'property created' do
        let(:property) { { name: 'Ile Ire', image: 'https://image.com', rserve: false, price: 100_000, location: 'Ajashe' } }
        let(:Authorization) { 'Bearer lorem' }
        run_test!
      end

      response '200', 'property created' do
        let(:property) { { name: 'Ile Ijebu', image: 'https://image.com', rserve: false, price: 150_000, location: 'Ogun state' } }
        let(:Authorization) { 'Bearer lorem' }
        run_test!
      end
    end
  end

  path '/api/v1/properties/{id}' do
    parameter name: :id, in: :path, type: :integer, required: true

    delete 'Delete property' do
      tags 'properties'
      consumes 'application/json'

      let(:id) { 30 }
      let(:properties) { {} }

      response '200', 'property deleted' do
        let(:Authorization) { 'Bearer lorem' }
        run_test!
      end

      response '200', 'invalid request' do
        let(:id) { 30 }
        let(:Authorization) { 'Bearer lorem' }
        run_test!
      end
    end
  end
end
