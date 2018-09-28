class User < ApplicationRecord

has_secure_password

  # validates :password, length: { minimum: 6 }, presence: true
  # validates :email, length: { minimum: 4 }, presence: true
  # validates :username, length: { minimum: 4 }, presence: true, uniqueness: true
  #

geocoded_by :address
  after_validation :geocode

  def save_full_user_address
    self.address = full_user_address
  end

  def address
      [street, city, state, country].compact.join(', ')
  end

  def geocode
    coords = Geocoder.search([street, city, state, country].to_s).first.coordinates
    self.latitude = coords[0].to_f
    self.longitude = coords[1].to_f
  end




  has_many :tickets
# Users can create many tickets
end
