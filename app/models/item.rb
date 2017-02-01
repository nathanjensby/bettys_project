class Item < ApplicationRecord
  validates :name, presence: true
  has_many :measurements, dependent: :destroy
  has_many :recipes, through: :measurements
end
