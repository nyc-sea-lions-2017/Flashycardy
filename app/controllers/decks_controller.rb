get '/decks' do
  binding.pry
  @decks = Deck.all
  # @random_index = random_id(params)
  erb :'/decks/index'
end


