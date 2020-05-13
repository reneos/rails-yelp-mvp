# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  attributes = {}
  attributes[:name] = Faker::Color.color_name + ' ' + Faker::Ancient.god
  attributes[:address] = Faker::Address.street_address
  attributes[:phone_number] = Faker::PhoneNumber.phone_number
  attributes[:category] = Restaurant::CATEGORIES.sample
  restaurant = Restaurant.new(attributes)
  restaurant.save!
end
