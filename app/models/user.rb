class User < ApplicationRecord
  has_many :rounds
  has_many :guesses, through: :rounds

	validates :email, :name, uniqueness: true
  validates :name, :email, presence: true

  has_secure_password
end

