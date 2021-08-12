# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.new(username: 'Vlad').save
List.new(name: 'Digital', owner: 0, user: User.first).save
List.new(name: 'Physical', owner: 0, user: User.first).save
Collection.new(name: 'Rocket League', user: User.first).save
Collection.new(name: 'Fortnite', user: User.first).save
Listable.new(list: List.first, collection: Collection.first).save