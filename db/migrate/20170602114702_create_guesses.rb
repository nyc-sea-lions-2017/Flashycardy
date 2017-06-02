class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
    t.integer :round_id, foreign_key: true
    t.integer :card_id, foreign_key:true
    t.string :guess

    t.timestamps
    end
  end
end
