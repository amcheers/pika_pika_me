class Booking < ApplicationRecord
  before_create :calculate_total_price
  belongs_to :pokemon
  belongs_to :user
  has_one :review
  validate :correct_times
  validates :start_date, presence: true
  validates :end_date, presence: true
  def calculate_total_price
    booking_days = end_date - start_date
    self.total_price = pokemon.price_per_day * booking_days.to_i
  end

  def correct_times
    errors.add(:start_date, "Start date must be bigger then End date") if start_date > end_date
  end
end
