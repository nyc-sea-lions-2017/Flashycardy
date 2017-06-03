get '/decks/:deck_id/cards/:card_id' do
  # binding.pry
  @card = Card.find(params[:card_id])
  erb :"cards/show"
end

post '/decks/:deck_id/cards/:id' do
  @card = Card.find(params[:id])
  @user_answer = params[:answer]
  redirect "/cards/#{@card.id}/answer"
end

get '/cards/:id/answer' do
  @card = Card.find(params[:id])
  erb :'/correct'
end
