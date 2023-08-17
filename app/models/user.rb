class User < ApplicationRecord
	has_many :reservations
	has_many :properties,  through: :reservations

	validates :name, presence: true, length: { maximum: 20 }
end
