# 5.times do
#   question = Faker::GameOfThrones.character
#   answer = Faker::Lorem.sentence

#   Card.create(question: question, answer: answer, deck_id: 1)
# end
Deck.create!(deckname:'NBA players')
Deck.cards.create(question: "Who played Jesus Shuttlesworth in the Movie 'He Got Game'?", answer: "Ray Allen", deck_id: 1)
deck1.cards.create(question: "This player scored 100 points in a single NBA game.", answer: "Wilt Chamberlain", deck_id: 1)
deck1.cards.create(question: "Who did the Knicks draft when they were one pick away from drafting Steph Curry?.", answer: "jordan hill", deck_id: 1)
deck2 = Deck.create!(deckname:"90's Hip Hop")
deck2.cards.create(question: "Name Nas' first album?", answer: "illmatic", deck_id: 2)
deck2.cards.create(question: "Which record label featured artists such as Dr. Dre, Tupac, and Snoop Dogg?", answer: "death row", deck_id: 2)
deck2.cards.create(question: "Phife Dawg, Q-Tip, and Ali Shaheed Muhammad were the members of what rap group?", answer: "a tribe called quest", deck_id: 2)



