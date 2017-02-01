class Category < ApplicationRecord
  validates :name, presence: true
  has_many :categories_recipes, dependent: :destroy
  has_many :recipes, through: :categories_recipes
end
