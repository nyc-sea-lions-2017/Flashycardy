class Guess < ApplicationRecord
  validates :card_id, :round_id, presence: true

  belongs_to :card
  belongs_to :round
  has_one :user, through: :round

end

