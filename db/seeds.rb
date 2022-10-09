# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "👩👨 Seeding users..."

user1 = User.create(username: 'Jen', password: 'apple')
user2 = User.create(username: 'Shani', password: 'banana')
user3 = User.create(username: 'Gehrig', password: 'banana')
user4 = User.create(username: 'Ethan', password: 'banana')
user5 = User.create(username: 'Hain', password: 'banana')
user6 = User.create(username: 'Ilolo', password: 'banana')
user7 = User.create(username: 'Vivian', password: 'banana')
user8 = User.create(username: 'Rodney', password: 'banana')
user9 = User.create(username: 'Ethan', password: 'banana')
user10 = User.create(username: 'Stella', password: 'banana')
user11 = User.create(username: 'Irene', password: 'banana')
user12 = User.create(username: 'Lucy', password: 'banana')
user13 = User.create(username: 'Nina', password: 'banana')

puts "✅ Done seeding!"
