# spec/integration/pets_spec.rb
require 'swagger_helper'

describe 'Signup API' do
  path '/signup' do
    post 'Creates an user' do
      tags 'registration'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: { type: :object,
                                                  properties: {
                                                    user: {
                                                      type: :object,
                                                      properties: {
                                                        name: { type: :string },
                                                        email: { type: :string },
                                                        password: { type: :string },
                                                        password_confirmation: { type: :string }
                                                      },
                                                      required: %w[name email password]
                                                    }
                                                  } }

      response '201', 'user created' do
        let(:user) do
          User.create(name: 'Fernando', email: 'fernando@hotmail.com', password: '123321',
                      password_confirmation: '123321')
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:user) { { name: 'Karla' } }
        run_test!
      end
    end
  end
end
