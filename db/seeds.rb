# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "Tom")
User.create(username: "Ash")

Game.create(user_id: 1, duration: 35, score: 150)
Game.create(user_id: 1, duration: 125, score: 350)
Game.create(user_id: 2, duration: 25, score: 50)
Game.create(user_id: 2, duration: 325, score: 750)
