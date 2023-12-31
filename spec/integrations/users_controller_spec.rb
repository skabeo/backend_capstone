require 'swagger_helper'

RSpec.describe 'api//v1/users', type: :request do
  path '/api/v1/users' do
    post 'Sign up' do
      tags 'users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          email: { type: :string },
          password: { type: :string },
          client_id: { type: :string }
        },
        required: %w[name email password client_id]
      }
      response '401', 'Sign up successfull' do
        let(:user) { { name: 'Adeola', email: 'test@example.com', password: '123456', client_id: 'lorem' } }
        run_test!
      end
      response '401', 'invalid request' do
        let(:user) { { name: 'Tom', email: 'email@example.com', password: '123456', client_id: 'lorem' } }
        run_test!
      end
    end
  end
  path '/api/v1/oauth/token' do
    post 'Sign in' do
      tags 'users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          grant_type: { type: :string },
          email: { type: :string },
          password: { type: :string },
          client_id: { type: :string },
          client_secret: { type: :string }
        },
        required: %w[email password grant_type client_id client_secret]
      }
      response '401', 'Sign in successfull' do
        let(:user) do
          { grant_type: 'password', email: 'test@gmail.com', password: '123456', client_id: 'lorem',
            client_secret: 'lorem' }
        end
        run_test!
      end
      response '401', 'invalid request' do
        let(:user) do
          { grant_type: 'password', email: 'test@gmail.com', password: '123456', client_id: 'lorem',
            client_secret: 'lorem' }
        end
        run_test!
      end
    end
  end
end
