# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # example = Item.new(category: "lapin")
  # example.save

  # player = Game.new(user_id: 1, score: 1)
  # player.save 
  # puts "One player"

# 4.times do |i|

  animals = ["cat", "dog", "rabbit", "chicken"]
  animals.each do |animal|   
    cart = Cart.create(category: animal)
    4.times do |id|
    item = Item.create(url: "#{animal}#{id+1}.gif")
    JoinTableCartItem.create(item_id: item.id, cart_id: cart.id)
    puts "#{animal}#{id+1}.gif"
    end
  end



  