require 'test_helper'

class TicketTest < ActiveSupport::TestCase

  test 'new_ticket_no_street' do
    @ticket = Ticket.new
    refute @ticket.save
  end
  # Wil fail validation

  test 'new_ticket_no_city'
  end
  # Will fail validation

  test 'new_ticket_has_street_no_city'
  end
  # Should fail

  test 'new_ticket_has_city_no_street'
  end
  # Should fail

  test 'new_ticket_no_state'
  end
  # No validation, this test should pass

  test 'new_ticket_no_country'
  end
  # No validation, this test should pass


  test 'new_ticket_has_street_and_city_and_description_no_repair'
  end

  test 'new_ticket_has_no_description'
  end


end
