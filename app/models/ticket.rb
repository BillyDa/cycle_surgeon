class Ticket < ApplicationRecord

# validates :

belongs_to :user
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
