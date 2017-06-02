class Card < ApplicationRecord
  belongs_to :deck
  has_many :guesses

  validates :deck_id, {presence: true}
end
