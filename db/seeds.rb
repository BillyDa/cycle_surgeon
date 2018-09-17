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

tyler = User.create(
  email: 'tyler@email.com',
  password: '123456',
  password_confirmation: '123456',
  surgeon: false
)

billy = User.create(
  email: 'billy@email.com',
  password: '123456',
  password_confirmation: '123456',
  surgeon: true
)

rob = User.create(
  email: 'rob@email.com',
  password: '123456',
  password_confirmation: '123456',
  surgeon: false
)

# Test ticket

tire = Ticket.create(
  user_id: User.pluck(:id).sample,
  # Saving this fails because the useer must exist.
  repair: 1,
  description: 'popped tire',
  cyclist_location: 2,
  surgeon_location: 3,
  distance: 1
)
