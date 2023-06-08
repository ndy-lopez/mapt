# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
PotentialLocation.destroy_all
PointOfInterest.destroy_all
Map.destroy_all
User.destroy_all

user1 = User.create!(username: 'Smith', email: 'john@gmail.com', password: 'password')
user2 = User.create!(username: 'Tim', email: 'tim@gmail.com', password: 'password')

map1 = Map.create(name: 'University', city: 'Montreal', user_id: user1.id)
map2 = Map.create(name: 'Summer Abroad', city: 'Athens', user_id: user1.id)
map3 = Map.create(name: 'Bachelor Party', city: 'Las Vegas', user_id: user2.id)

poi1 = PointOfInterest.create!(name: 'Tom', category: 'friend', address: '528 Victoria', latitude: '', longitude: '', map_id: map1.id)

pl1 = PotentialLocation.create!(name: 'bassin', address: '560 Victoria', latitude: '', longitude: '', map_id: map1.id)


puts "Generating Users, maps, POIs and POLs..."
