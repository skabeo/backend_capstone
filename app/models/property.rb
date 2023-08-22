class Property < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :name, presence: true, length: { maximum: 30 }
  validates :price, presence: true, numericality: true
  validates :location, presence: true, length: { maximum: 50 }
  validates :image, presence: true
end
