class Pokemon < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_one_attached :photo
  has_many :bookings
  belongs_to :kind
  validates :name, presence: true
  validates :description, presence: true
  validates :kind, presence: true
  validates :price_per_day, presence: true
end
