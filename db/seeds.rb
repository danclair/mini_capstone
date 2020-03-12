# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
product = Product.new({ name: "Hoodie", price: 19, description: "Soft knit zip-front hoodie with pullstrings", image_url: "https://oldnavy.gap.com/webcontent/0010/698/786/cn10698786.jpg", category: "Outerwear" })
product.save

product2 = Product.new({ name: "Ankle Socks", price: 12, description: "Moisture wicking knit socks", image_url: "https://images-na.ssl-images-amazon.com/images/I/710qXy1vL4L._AC_UX679_.jpg", category: "Footwear" })
product2.save

product3 = Product.new({ name: "Slim-fit Khakis", price: 24, description: "Slim fit woven pants, 85% cotton, 15% lycra", image_url: "https://i.pinimg.com/originals/fb/9e/66/fb9e66a911b869ac03de2807ce39b125.jpg", category: "Pants" })
product3.save
