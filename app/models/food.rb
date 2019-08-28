class Food < ApplicationRecord
  has_many :meals
  has_many :users, through: :meals
  has_many :comments, through: :meals
end
