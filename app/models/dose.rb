class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, uniqueness: true, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  add_index :cocktail, :ingredient , unique: true
end
