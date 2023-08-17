class Property < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations

  validates :name, presence: true, length: { maximum: 30 }
  validates :price, presence: true, numeracality: true
  validates :location, presence: true, length: { maximum: 50 }
  validates :image, presence: true
end
