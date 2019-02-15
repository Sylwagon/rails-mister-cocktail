class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient, uniqueness: { scope: :cocktail }
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :description, presence: true
end
