class User < ApplicationRecord

has_secure_password

  validates :password_digest, length: { minimum: 6 }
  validates :password_digest, presence: true
  validates :email, length: {minimum: 4}, uniqueness: true, presence: true

has_many :tickets
# Users can create many tickets
end
