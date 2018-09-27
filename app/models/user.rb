class User < ApplicationRecord

has_secure_password

  validates :password, length: { minimum: 6 }, presence: true
  validates :email, length: { minimum: 4 }, presence: true
  validates :username, length: { minimum: 4 }, presence: true, uniqueness: true

# geocoded_by :user_address
#   after_validation :geocode

has_many :tickets
# Users can create many tickets
end
