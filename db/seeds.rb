10.times do
  question = Faker::Job.field
  answer = Faker::Lorem.sentence

  Card.create(question:question, answer:answer,deck_id:1)
end

Deck.create(deckname:'Jobs')

