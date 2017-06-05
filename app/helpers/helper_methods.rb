def current_user
  @user ||= User.find_by(id: session[:user_id])
end

def logged_in
  !!current_user
end

def redirect_if_no_user
  redirect "/login" unless logged_in
end

def card_count
  self.cards.count
end

# def card_shuffler
# 	card_array = Card.where(deck_id: self.id)
# 	card_index = card_array.map{|card| card.id.to_i}
# 	card_index.shuffle!
# 	new_card_id = card_index.shift
# 	if new_card
# 		new_card
# 	else
# 		redirect '/decks/:deck_id/cards/completed'
# 	end
# end
