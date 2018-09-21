# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ticket.destroy_all
User.destroy_all

# Just a few test users

cyc1 = User.create(
  username: 'cyc1',
  email: 'cyc1@email.com',
  password: 'abc123',
  password_confirmation: 'abc123',
  surgeon: nil
)

cyc2 = User.create(
  username: 'cyc2',
  email: 'cyc2@email.com',
  password: 'abc123',
  password_confirmation: 'abc123',
  surgeon: nil
)

sur1 = User.create(
  username: 'sur1',
  email: 'sur1@email.com',
  password: 'abc123',
  password_confirmation: 'abc123',
  surgeon: true
)

sur2 = User.create(
  username: 'sur2',
  email: 'sur2@email.com',
  password: 'abc123',
  password_confirmation: 'abc123',
  surgeon: true
)
# Test ticket

tic1 = Ticket.create(
  user_id: 0,
  repair: 1,
  description: 'popped tire',
  cyclist_location: 2,
  ticket_accepted: nil
)

tic2 = Ticket.create(
  user_id: 0,
  repair: 2,
  description: 'second ticket for user 0',
  cyclist_location: 6,
  ticket_accepted: nil
)

tic3 = Ticket.create(
  user_id: 1,
  repair: 1,
  description: 'popped tire',
  cyclist_location: 5,
  ticket_accepted: nil
)
