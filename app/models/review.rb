class Review < ApplicationRecord
  belongs_to :booking
  has_one :pokemon, through: :booking
  validates :content, presence: true
end
