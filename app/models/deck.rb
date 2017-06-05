class Deck < ApplicationRecord
  validates :deckname, presence: true

  has_many :cards
  has_many :rounds
  has_many :users, through: :rounds

end
