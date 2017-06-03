class User < ApplicationRecord
  has_secure_password
  has_many :rounds
  validates :email, :name, uniqueness: true
  validates :name, :email, presence: true


end

