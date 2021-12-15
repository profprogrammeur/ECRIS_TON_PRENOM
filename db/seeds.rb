# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  

  player = Game.new(score: 1, user_id: 1)
  player.save 
  puts "One player"

  cart1 = Cart.new(category: "chat", user_id: 1, item_id: 1)
  cart1.save
  puts "Create cart1"

  item1 = Item.new(url: "urlo")
  item1.save
  puts "Create item1"

  join1 = JoinTableCartItem.new(cart_id: 1, item_id: 1)
  join1.save
  puts "Create join1"

  avatar1 = Avatar.new(url: "img")
  avatar1.save
  puts "Create item1"