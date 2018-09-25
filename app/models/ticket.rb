class Ticket < ApplicationRecord

validates :user_id, presence: true
validates :description, presence: true
validates :repair, presence: true

geocoded_by :user_address
  after_validation :geocode

  # geocoded_by :surgeon_address
  #   after_validation :geocode

has_many :users

def get_user_address
  [user_street, user_city, user_province].join(', ')
end

def surgeon_address
  [surgeon_street, surgeon_city, surgeon_province].join(', ')
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
# Tickets belong to a user
end
#
# created by a cyclist
# accepted by a surgeon (to be completed)
# contains issue type
# notes field (maxiumum of 300)
#
# #
# # LOCATION.. must be valid (like an address)
# USERNAME .. pulled (not entered)
# Issue type... that's selected (needs at least one)
