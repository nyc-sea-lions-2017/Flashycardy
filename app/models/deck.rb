class Deck < ApplicationRecord
  has_many :cards
  has_many :rounds

  validates :deckname, presence: true
end
