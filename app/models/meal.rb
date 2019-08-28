class Meal < ApplicationRecord
  belongs_to :user
  belongs_to :food
  has_many :comments 
end
