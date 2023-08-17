class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :reservations
	has_many :properties,  through: :reservations

	validates :name, presence: true, length: { maximum: 20 }
end
