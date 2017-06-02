def random_id(params,id)
  card_array = Card.where[deck_id: params[:decks]
  card_index = card_array.map{|card| card.id}
  if card_index
    index = card_index.sample.shift
  else
    '/users/profile/id'
  end
end
