class User < ApplicationRecord
  has_secure_password
  has_many :meals
  has_many :foods, through: :meals
  validates :name, :email, :password_digest, presence: true
  validates_confirmation_of :password

end
