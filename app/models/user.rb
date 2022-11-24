class User < ApplicationRecord
  has_many :bookings
  has_many :packages, through: :bookings

  validates :name, presence: true, length: { maximum: 30 }
end
