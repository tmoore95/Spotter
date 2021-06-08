# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroyed old seeds"
Skater.destroy_all
puts "seeds destroyed"

skater1 = Skater.create!(username: "Chad", email: "chad@spotter.com", password: "secret")
skater2 = Skater.create!(username: "Tom", email: "tom@spotter.com", password: "secret")
skater3 = Skater.create!(username: "Harry", email: "harry@spotter.com", password: "secret")
skater4 = Skater.create!(username: "Alex", email: "alex@spotter.com", password: "secret")
