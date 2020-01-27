class Drink < ApplicationRecord
  has_one :user
  
  has_many :drink_ingredients, dependent: :destroy
  has_many :ingredients, through: :drink_ingredients
end
