class Package < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

  validates :title, presence: true, length: { maximum: 30 }
  validates :description, presence: true, length: { maximum: 300 }
  validates :destination, presence: true, length: { maximum: 30 }
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :flight, inclusion: [true, false]
  validates :hotel, presence: true, length: { maximum: 30 }
end
