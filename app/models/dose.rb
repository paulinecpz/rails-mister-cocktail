class Dose < ApplicationRecord
  belongs_to :ingredient # ingredient_id
  belongs_to :cocktail   # cocktail_id

  validates :description, presence: true

  validates :ingredient, uniqueness: { scope: :cocktail }
  # validates :cocktail, uniqueness: { scope: :ingredient }
end