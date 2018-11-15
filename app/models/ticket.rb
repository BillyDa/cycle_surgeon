class Ticket < ApplicationRecord

validates :user_id, presence: true
validates :description, presence: true
validates :repair, presence: true
validates :street, presence: true
validates :city, presence: true

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



  def self.repair_types
    return {
      0 => "Hydraulic Disc",
      1 => "Handle Bar",
      2 => "Brake",
      3 => "Saddle",
      4 => "Lever",
      5 => "V Brake",
      6 => "Flat Tire",
      7 => "Tune Up",
      8 => "Other"
    }
  end

  def repair_string
    case repair
    when 0
      return "Hydraulic Disc"
    when 1
      return "Handle Bar"
    when 2
      return "Brake"
    when 3
      return "Saddle"
    when 4
      return "Lever"
    when 5
      return "V Brake"
    when 6
      return "Flat Tire"
    when 7
      return "Tune Up"
    when 8
      return "Other"
    end
  end
end
