require 'rails_helper'

RSpec.describe 'Packages', type: :request do
  before(:each) do
    @user = User.create!(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                         password_confirmation: 'password')

    sign_in @user
  end

  let(:valid_attributes) do
    {
      title: 'Rainbow Resort - Qatar 2022',
      description: 'Description Example 1.',
      destination: 'Doha City',
      price: 3500,
      flight: true,
      hotel: '10 days',
      promotion: 15,
      photo: 'https://images.pexels.com/photos/9400974/pexels-photo-9400974.jpeg?auto=compress&cs=tinysrgb&w=600'
    }
  end

  let(:invalid_attributes) do
    {
      title: 'nil',
      description: 'Description Example 1.',
      destination: 'Doha City',
      price: 3500,
      flight: true,
      hotel: '10 days',
      promotion: 15,
      photo: 'https://images.pexels.com/photos/9400974/pexels-photo-9400974.jpeg?auto=compress&cs=tinysrgb&w=600'
    }
  end
  before(:each) do
    Package.create! valid_attributes
    get packages_url
  end
  describe 'GET /index' do
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'JSON body response contains expected package attributes' do
      hash_body = JSON.parse(response.body)
      expect(hash_body[0].keys).to match_array(%w[id
                                                  title
                                                  description
                                                  destination
                                                  price
                                                  flight
                                                  hotel
                                                  promotion
                                                  photo
                                                  created_at
                                                  updated_at])
    end
  end
end
