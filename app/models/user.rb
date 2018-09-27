class User < ApplicationRecord

has_secure_password

  validates :password, length: { minimum: 6 }, presence: true
  validates :email, length: { minimum: 4 }, presence: true
  validates :username, length: { minimum: 4 }, presence: true, uniqueness: true



geocoded_by :address_user
  after_validation :save_full_user_address

  def save_full_user_address
    self.address = full_user_address
  end

  def full_user_address
    [address]
  end

def geocode_user
  coords = Geocoder.search(address).first.coordinates
  self.latitude = cords[0].to_f
  self.longitude = cords[1].to_f
end

has_many :tickets
# Users can create many tickets
end
