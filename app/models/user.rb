class User < ApplicationRecord

has_secure_password

  validates :password, length: { minimum: 6 }, presence: true
  validates :email, length: {minimum: 4}, uniqueness: true, presence: true, on: :create

has_many :tickets
# Users can create many tickets
end
