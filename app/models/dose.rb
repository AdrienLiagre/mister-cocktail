class Dose < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, uniqueness: true, presence: true
  validates :cocktail, presence: true, uniqueness: true,
  validates :ingredient, presence: true, uniqueness: true,
end
