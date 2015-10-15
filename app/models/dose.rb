class Dose < ActiveRecord::Base
  belongs_to :ingredient, dependent: :destroy
  belongs_to :cocktail
  validates :ingredient, presence: true
  validates :cocktail, presence: true, :uniqueness => {:scope =>[:cocktail, :ingredient]}
  end


