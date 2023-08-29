class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :reservations, dependent: :destroy
	has_many :properties,  through: :reservations

	validates :name, presence: true, length: { maximum: 20 }
  validates :email, format: URI::MailTo::EMAIL_REGEXP
  enum role: %i[user admin]

  def self.authenticate(email, password)
    user = User.find_for_authentication(email: email)
    user&.valid_password?(password) ? user : nil
  end
end
