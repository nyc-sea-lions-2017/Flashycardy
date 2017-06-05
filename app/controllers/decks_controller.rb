get '/decks' do
  # binding.pry
  @decks = Deck.all
	  erb :'/decks/index'
end

get '/decks/:deck_id' do
  @round = Round.create(deck_id: params[:deck_id], user_id: current_user.id)
  @deck = Deck.find(params[:deck_id])

  redirect "/decks/#{@deck.id}/cards/#{@deck.cards.first.id}/rounds/#{@round.id}"
end

get '/decks/:deck_id/cards/completed' do
	erb :'completed'
end




