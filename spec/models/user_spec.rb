require 'rails_helper'

RSpec.describe User, type: :model do
  let(:valid_attributes) do
    {
      name: 'Mumenya Nyamu',
      email: 'success@example.com',
      password: 'password',
      password_confirmation: 'password'
    }
  end
  subject { User.new valid_attributes }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a password' do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it 'email should return a string' do
    expect(subject.email).to be_a_kind_of(String)
  end
end
