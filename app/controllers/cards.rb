get '/decks/:deck_id/cards/:card_id/rounds/:round_id' do
  # binding.pry
  @deck = Deck.find(params[:deck_id])
  @card = @deck.cards.find(params[:card_id])
  erb :"/cards/show"
end

post '/decks/:deck_id/cards/:card_id/rounds/:round_id' do
	# binding.pry
  @guess = Guess.create(guess: params[:user][:answer], round_id: params[:round_id], card_id: params[:card_id])
  @deck = Deck.find(params[:deck_id])
  @card = @deck.cards.find(params[:card_id])
  @user_answer = @card.guesses.create(guess: params[:user][:answer])
  if @card
  	erb :"/answers/show"
  else
  	erb :"/completed/show"
  end
end

get '/cards/:id/answer' do
  @card = Card.find(params[:id])
  erb :'/cards/show'
end


