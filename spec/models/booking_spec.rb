require 'rails_helper'

RSpec.describe Booking, type: :model do
  before(:each) do
    @user = User.create!(name: 'Mumenya Nyamu', email: 'success@example.com', password: 'password',
                         password_confirmation: 'password')
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

  subject { Booking.new valid_attributes }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without an end_date less than start_date' do
    subject.end_date = '31/12/2022'
    expect(subject).to_not be_valid
  end

  it 'is not valid with a start_date  less than present day' do
    subject.start_date = '01/01/2021'
    expect(subject).to_not be_valid
  end

  it 'is not valid with a end_date  less than present day' do
    subject.end_date = '01/01/2021'
    expect(subject).to_not be_valid
  end
  it 'is not valid without an user' do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a package' do
    subject.package = nil
    expect(subject).to_not be_valid
  end
end
