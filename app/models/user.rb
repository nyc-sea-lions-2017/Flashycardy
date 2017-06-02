class User < ApplicationRecord
  has_many :rounds

  has_secure_password

end
