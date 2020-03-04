# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
my_product = Product.new({ name: "Hoodie", price: 19, description: "Soft knit zip-front hoodie with pullstrings", category: "Outerwear" })
my_product.save

my_product2 = Product.new({ name: "Ankle Socks", price: 12, description: "Moisture wicking knit socks", category: "Footwear" })
my_product2.save

my_product3 = Product.new({ name: "Slim-fit Khakis", price: 24, description: "Slim fit woven pants, 85% cotton, 15% lycra", category: "Pants" })
my_product3.save
