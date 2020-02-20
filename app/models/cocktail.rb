class Cocktail < ApplicationRecord
  has_many :ingredients, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: true
end