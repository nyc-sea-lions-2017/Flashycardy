get '/decks' do
  # binding.pry
  @decks = Deck.all
  erb :'/decks/index'
end




