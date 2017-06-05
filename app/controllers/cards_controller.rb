get '/decks/:deck_id/cards/:card_id/rounds/:round_id' do
  # binding.pry
  @deck = Deck.find(params[:deck_id])
  @round = @deck.rounds.find_by(id: params[:round_id])
  @card = @deck.cards.find(params[:card_id])
  erb :"/cards/show"
end

post '/decks/:deck_id/cards/:card_id/rounds/:round_id' do
	# binding.pry
  @guess = Guess.create(guess: params[:user][:answer], round_id: params[:round_id], card_id: params[:card_id])
  @deck = Deck.find(params[:deck_id])
  @round = Round.find(params[:round_id])
  @card = @deck.cards.find(params[:card_id])
  @guess = Guess.create(guess: params[:user][:answer], round_id: params[:deck_id], card_id: params[:card_id] )
  # binding.pry
  if @card.id < @deck.cards.length
    if @card.answer.downcase == @guess.guess.downcase
      erb :'/answers/correct_show'
    else
  	  erb :"/answers/incorrect_show"
    end
  else
    erb :'/completed/show'
  end
end

get '/cards/:id/answer' do
  @card = Card.find(params[:id])
  erb :'/cards/show'
end


