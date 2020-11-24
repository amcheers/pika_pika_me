class Pokemon < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
  validates :pokemon_class, presence: true
  validates :price_per_day, presence: true
end
