get '/decks' do
  # binding.pry
  @decks = Deck.all
	  erb :'/decks/index'
end

get '/decks/:deck_id/cards/completed' do 
	erb :'completed'
end




