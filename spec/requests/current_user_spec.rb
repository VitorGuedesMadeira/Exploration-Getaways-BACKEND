require 'rails_helper'

RSpec.describe 'CurrentUsers', type: :request do
  before(:each) do
    @user = User.create!(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                         password_confirmation: 'password')

    sign_in @user
  end
  describe 'GET /index' do
    it 'returns http success' do
      get '/current_user'
      expect(response).to have_http_status(:success)
    end
  end
end
