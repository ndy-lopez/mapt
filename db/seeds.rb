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

map1 = Map.create!(name: 'University', city: 'Montreal', latitude: 45.5018869, longitude: -73.56739189999999, google_place_id: "ChIJDbdkHFQayUwR7-8fITgxTmU", user: user1)
map2 = Map.create!(name: 'Bachelor Party', city: 'Las Vegas', latitude: 36.171563, longitude: -115.1391009, google_place_id: "ChIJ0X31pIK3voARo3mz1ebVzDo", user: user1)

PointOfInterest.create!(name: 'Tom', category: 'Friends/Family', address: '528 Victoria', latitude: '', longitude: '', map_id: map1.id)
PointOfInterest.create!(name: 'Concordia', category: 'Education', address: '5333 rue Casgrain #102, Montreal', latitude: 45.5261702, longitude: -73.5950124, map_id: map1.id)
PointOfInterest.create!(name: 'Mcdonalds', category: 'Work', address: '528 Victoria', latitude: 45.5221592, longitude: -73.6215761, map_id: map1.id)


PotentialLocation.create!(name: 'LeWagon', address: '5333 rue Casgrain #102, Montreal', latitude: 45.5261702, longitude: -73.5950124, map_id: map1.id)
PotentialLocation.create!(name: 'YMCA', address: '528 Victoria', latitude: 45.5221592, longitude: -73.6215761, map_id: map1.id)

puts "Generating Users, maps, POIs and POLs..."
