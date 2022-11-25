class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :package

  validates :start_date, comparison: { greater_than: :end_date }
  validates :start_date, presence: true, comparison: { greater_than: Date.today.to_time.to_i }
  validates :end_date, presence: true, comparison: { greater_than: Date.today.to_time.to_i }
end
