class User < ApplicationRecord
    has_many :reservations
    has_many :properties,  through: :reservation
end
