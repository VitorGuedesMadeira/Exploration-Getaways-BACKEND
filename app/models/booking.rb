class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :package

  validates :end_date, comparison: { greater_than: :start_date }
  validates :start_date, presence: true, comparison: { greater_than: Time.now }
  validates :end_date, presence: true, comparison: { greater_than: Time.now }
end
