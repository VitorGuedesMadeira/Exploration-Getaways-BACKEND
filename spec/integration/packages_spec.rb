# spec/integration/pets_spec.rb
require 'swagger_helper'

describe 'Packages API' do
  path '/packages' do
    post 'Creates a package' do
      tags 'packages'
      consumes 'application/json'
      parameter name: :package, in: :body, schema: { type: :object,
                                                     properties: {
                                                       id: { type: :integer },
                                                       title: { type: :string },
                                                       description: { type: :string },
                                                       destination: { type: :string },
                                                       price: { type: :integer },
                                                       flight: { type: :boolean },
                                                       promotion: { type: :integer },
                                                       hotel: { type: :string },
                                                       photo: { type: :string }
                                                     },
                                                     required: %w[id title description destination hotel] }
      response '201', 'package created' do
        let(:package) do
          Package.create(title: 'World Cup', description: 'football championship', destination: 'Qatar', price: 250,
                         flight: true, promotion: 15, hotel: '10 days',
                         photo: ['http://example.com/avatar.jpg', 'http://example.com/avatar.jpg'])
        end
        run_test!
      end
      response '422', 'invalid request' do
        let(:package) { { title: 'foo' } }
        run_test!
      end
    end

    get('list packages') do
      tags 'packages'
      produces 'application/json'
      let!(:package) do
        { title: 'World Cup', description: 'football championship', destination: 'Qatar', price: 250,
          flight: true, promotion: 15, hotel: '10 days',
          photo: ['http://example.com/avatar.jpg', 'http://example.com/avatar.jpg'] }
      end

      response(200, 'successful') do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   title: { type: :string },
                   description: { type: :string },
                   destination: { type: :string },
                   price: { type: :integer },
                   flight: { type: :boolean },
                   promotion: { type: :integer },
                   hotel: { type: :string },
                   photo: { type: :array }
                 },
                 required: %w[id title description destination hotel]
               }
        let!(:package) do
          Package.create(title: 'World Cup', description: 'football championship', destination: 'Qatar', price: 250,
                         flight: true, promotion: 15, hotel: '10 days',
                         photo: ['http://example.com/avatar.jpg', 'http://example.com/avatar.jpg'])
        end
        run_test! do |response|
          response = JSON.parse(response.body)
          expect(response.first['title']).to eq(package.title)
        end
      end
    end
  end
end
