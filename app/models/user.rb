class User < ApplicationRecord
    has_many :reservations
    has_many :properties,  through: :reservation

    validates :name, presence: true, length: { maximum: 20 }
    
end
