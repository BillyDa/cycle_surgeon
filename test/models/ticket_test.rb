require 'test_helper'

class TicketTest < ActiveSupport::TestCase

  def setup
    # This ticket has no info
    @ticket = Ticket.new

    # This is a complete ticket
    @ticket_full = Ticket.new
    @ticket_full.city = 'Toronto'
    @ticket_full.user_id = 5
    @ticket_full.street = '220 King Street West'
    @ticket_full.state = '' # althought not required, state and country need to be present as empty strings so the geocoder method coords can run
    @ticket_full.country = ''
    @ticket_full.repair = 1
    @ticket_full.description = 'news'
  end

  #
  # def setup_complete_ticket
  #   @ticket_full = Ticket.new
  #   @ticket_full.city = 'Toronto'
  #   @ticket_full.street = 'King Street'
  #   @ticket_full.repair = 1
  #   @ticket_full.description = 'news'
  # end

  test 'new_ticket_no_street' do
    # @ticket = Ticket.new
    refute @ticket.save
  end
  # Wil fail validation

  test 'new_ticket_no_city' do
    # @ticket = Ticket.new
    refute @ticket.save
  end
  # Will fail validation

  test 'new_ticket_has_street_no_city' do
    @ticket.street = '22 King Street West'
    @ticket.city = ''
    @ticket.country = ''
    @ticket.state = ''
    expected = false
    actual = @ticket.save
    assert_equal(expected, actual)
  end
  # Should fail

  test 'new_ticket_has_city_no_street' do
    @ticket.street = ''
    @ticket.city = 'Toronto'
    @ticket.country = ''
    @ticket.state = ''
    expected = false
    actual = @ticket.save
    assert_equal(expected, actual)
  end
  # Should fail

  test 'new_ticket_no_state' do
    # @ticket = Ticket.new
    # @ticket.city = 'Toronto'
    # @ticket.user_id = 5
    # @ticket.street = '220 King Street West'
    # @ticket.state = ''
    # @ticket.country = ''
    # @ticket.repair = 1
    # @ticket.description = 'news'
    @ticket_full
    assert @ticket_full.save
  end
  # No validation, this test should pass

  test 'new_ticket_no_country' do
    # @ticket = Ticket.new
    # @ticket.city = 'Toronto'
    # @ticket.street = 'King Street'
    # @ticket.state = ''
    # @ticket.country = ''
    # @ticket.user_id = 2
    # @ticket.repair = 1
    # @ticket.description = 'news'
    assert @ticket_full.save
  end
  # No validation, this test should pass


  test 'new_ticket_has_street_and_city_and_description_no_repair' do
    @ticket.street = '220 King Street West'
    @ticket.city = 'Toronto'
    @ticket.country = ''
    @ticket.state = ''
    @ticket.description = 'news'
    refute @ticket.save

  end

  test 'new_ticket_has_no_description' do
    @ticket_full.description = nil
    refute @ticket_full.save
  end


end
