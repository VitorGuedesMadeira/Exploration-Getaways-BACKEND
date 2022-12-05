require 'rails_helper'

RSpec.describe 'Bookings', type: :request do
  before(:each) do
    @user = User.create!(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                         password_confirmation: 'password')

    sign_in @user
    @package = Package.create!(title: 'Rainbow Resort - Qatar 2022', description: 'Description Example 1.',
                               destination: 'Doha City', price: 3500, flight: true, hotel: '10 days', promotion: 15,
                               photo: 'https://images.pexels.com/photos/9400974/pexels-photo-9400974.jpeg?auto=compress&cs=tinysrgb&w=600')
  end
  let(:valid_attributes) do
    {
      start_date: '01/01/2023',
      end_date: '02/02/2023',
      user: @user,
      package: @package
    }
  end

  let(:invalid_attributes) do
    {
      start_date: '01/01/2023',
      end_date: '02/02/2023',
      user: nil,
      package: nil
    }
  end
  before(:each) do
    Booking.create! valid_attributes
    get bookings_url
  end

  describe 'GET /index' do
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end

  it 'JSON body response contains expected booking attributes' do
    hash_body = JSON.parse(response.body)
    expect(hash_body[0].keys).to match_array(%w[id
                                                start_date
                                                end_date
                                                user_id
                                                package_id
                                                created_at
                                                updated_at])
  end
end
