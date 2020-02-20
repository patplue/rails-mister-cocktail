class Ingredient < ApplicationRecord
  has_many :doses, through: :ingredients
  validates :name, presence: true
  validates :name, uniqueness: true
end
