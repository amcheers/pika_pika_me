class Pokemon < ApplicationRecord
  include PgSearch::Model

  belongs_to :user, dependent: :destroy
  has_one_attached :photo
  has_many :bookings

  pg_search_scope :search_by_name_and_pokemon_class,
    against: [:name, :pokemon_class],
    using: {
      tsearch: { prefix: true }
    }

  validates :name, presence: true
  validates :description, presence: true
  validates :pokemon_class, presence: true
  validates :price_per_day, presence: true
end
