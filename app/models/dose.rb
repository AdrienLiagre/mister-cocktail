class Dose < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cocktail
  # validates :description, presence: true, uniqueness: true
  # validates :cocktail, presence: true, uniqueness: true
  validates :ingredient, presence: true, uniqueness: true
  validates :cocktail, presence: true, :uniqueness => {:scope =>[:cocktail, :ingredient]}
  end


  # is unique for a given cocktail/ingredient couple (FAILED - 3)
