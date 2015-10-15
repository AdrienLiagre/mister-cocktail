class Dose < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cocktail
  validates :ingredient, presence: true, uniqueness: true
  validates :cocktail, presence: true, :uniqueness => {:scope =>[:cocktail, :ingredient]}
  end


