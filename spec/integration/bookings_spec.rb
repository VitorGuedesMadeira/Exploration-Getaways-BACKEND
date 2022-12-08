# spec/integration/pets_spec.rb
require 'swagger_helper'

describe 'Bookings API' do
  path '/bookings' do
    post 'Creates a booking' do
      tags 'bookings'
      consumes 'application/json'
      parameter name: :booking, in: :body, schema: { type: :object,
                                                     properties: {
                                                       id: { type: :integer },
                                                       start_date: { type: :string },
                                                       end_date: { type: :string },
                                                       user_id: { type: :integer },
                                                       package_id: { type: :integer }
                                                     },
                                                     required: %w[id start_date end_date user_id package_id] }
      response '201', 'booking created' do
        let(:booking) do
          Booking.create(start_date: '01/01/2025', end_date: '01/01/2026', user_id: 1, package_id: 1)
        end
        run_test!
      end
      response '422', 'You need to sign in or sign up before continuing.' do
        let(:booking) { { end_date: '01/01/2000' } }
        run_test!
      end
    end

    get('List all bookings') do
      tags 'bookings'
      produces 'application/json'
      let!(:booking) do
        { start_date: '01/01/2025', end_date: '01/01/2026', user_id: 1, package_id: 1 }
      end

      response(200, 'successful') do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   start_date: { type: :string },
                   end_date: { type: :string },
                   user_id: { type: :integer },
                   package_id: { type: :integer }
                 },
                 required: %w[id start_date end_date user_id package_id]
               }

        let!(:booking) do
          Booking.create(start_date: '01/01/2025', end_date: '01/01/2026', user_id: 1, package_id: 1)
        end
        run_test! do |response|
          response = JSON.parse(response.body)
          expect(response.first['title']).to eq(booking.start_date)
        end
      end
    end
  end
end
