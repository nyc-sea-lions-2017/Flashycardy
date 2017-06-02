def random_id(params)
  card_array = Card.where[deck_id: params[:decks]]
  card_index = card_array.map{|card| card.id}.to_i
  if card_index
    index = card_index.sample.shift
  else
    'redirect'
  end
end
