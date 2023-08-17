class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :property

  validates :city, presence: true, length: { maximum: 20 }
  validates :day_of_visit, presence: true
end
