class Deck < ApplicationRecord
  has_many :cards
  has_many :rounds

  validates :deckname, presence: true

  def random_id
  card_array = Card.where(deck_id: self.id)
    # binding.pry
  card_index = card_array.map{|card| card.id.to_i}
  card_index.shuffle
  if card_index
    index = card_index.shift
  else
    'redirect'
  end
end

end
