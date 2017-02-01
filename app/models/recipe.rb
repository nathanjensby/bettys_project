class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :instructions, presence: true
  has_many :categories_recipes, dependent: :destroy
  has_many :categories, through: :categories_recipes
  has_many :items, through: :measurements
  has_many :measurements, dependent: :destroy
end
