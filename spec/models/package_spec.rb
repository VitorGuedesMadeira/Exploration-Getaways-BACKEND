require 'rails_helper'

RSpec.describe Package, type: :model do
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

  subject { Package.new valid_attributes }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a title length greater than 50 characters' do
    subject.title = 'Rainbow Resort - Qatar 2022 Rainbow Resort - Qatar 2022 Rainbow Resort - Qatar 2022   '
    expect(subject).to_not be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a description length greater than 300 characters' do
    subject.description = 'Irure consequat laboris id reprehenderit non in ipsum minim fugiat duis cillum. Sint
    incididunt elit mollit nisi eu. Ad nostrud aute sint nulla ex pariatur consectetur deserunt qui anim
    culpa do laboris quis. Velit fugiat occaecat Lorem magna culpa anim.
      Reprehenderit tempor sit ex irure nostrud consequat
      deserunt elit magna duis officia eu consequat dolor. Veniam sit consequat anim tempor proident aliqua esse mollit.
      Veniam occaecat pariatur ad anim qui sunt dolore et duis exercitation aliqua laboris ea et. Voluptate sit mollit
      pariatur nisi enim. Pariatur aliquip minim enim qui anim minim sit sint magna ut officia id et enim.
      Lorem magna adipisicing et duis aliqua dolor. Esse qui do magna velit. Reprehenderit do velit nostrud
        elit consequat laborum ad deserunt in in Lorem deserunt.Lorem anim ad commodo sit pariatur commodo
        consequat commodo ipsum dolor nulla incididunt. Dolore sit qui labore velit eu velit.
        Enim Lorem occaecat ut excepteur eu do Lorem.
          Dolor nostrud culpa id ex cillum excepteur laborum qui nostrud officia magna sint minim ad.'
    expect(subject).to_not be_valid
  end

  it 'is not valid without a destination' do
    subject.destination = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a destination length greater than 50 characters' do
    subject.destination = 'Rainbow Resort - Qatar 2022 Rainbow Resort - Qatar 2022 Rainbow Resort - Qatar 2022   '
    expect(subject).to_not be_valid
  end

  it 'check if price is a number ' do
    expect(subject.price).to be_a_kind_of(Numeric)
  end

  it 'check if price is a number greater than 0 ' do
    subject.price = -1
    expect(subject).to_not be_valid
  end

  it 'check if flight is a boolean ' do
    expect(subject.flight).to be_in([true, false])
  end

  it 'is not valid without a hotel' do
    subject.hotel = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a hotel length greater than 30 characters' do
    subject.hotel = 'Rainbow Resort - Qatar 2022 Rainbow Resort - Qatar 2022 Rainbow Resort - Qatar 2022   '
    expect(subject).to_not be_valid
  end
end
