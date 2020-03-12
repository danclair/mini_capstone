# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
supplier = Supplier.new({ name: "Old Navy", email: "info@oldnavy.com", phone_number: "312-555-5555" })
supplier.save

supplier2 = Supplier.new({ name: "New Balance", email: "info@newbalance.com", phone_number: "312-444-4444" })
supplier2.save

supplier3 = Supplier.new({ name: "Apple", email: "info@apple.com", phone_number: "312-111-1111" })
supplier3.save

product = Product.new({ name: "Hoodie", price: 19, description: "Soft knit zip-front hoodie with pullstrings", image_url: "https://oldnavy.gap.com/webcontent/0010/698/786/cn10698786.jpg" })
product.save

product2 = Product.new({ name: "Ankle Socks", price: 12, description: "Moisture wicking knit socks", image_url: "https://images-na.ssl-images-amazon.com/images/I/710qXy1vL4L._AC_UX679_.jpg" })
product2.save

product3 = Product.new({ name: "Slim-fit Khakis", price: 24, description: "Slim fit woven pants, 85% cotton, 15% lycra", image_url: "https://i.pinimg.com/originals/fb/9e/66/fb9e66a911b869ac03de2807ce39b125.jpg" })
product3.save

product4 = Product.new({ name: "Cool Widget", price: 30, description: "Widget that does cool things", image_url: "https://support.apple.com/library/content/dam/edam/applecare/images/en_US/social/ios13-iphone-xs-widget-social-card.jpg" })
product4.save

product5 = Product.new({ name: "New Thing", price: 15, description: "This thing is so new", image_url: "https://i.ytimg.com/vi/2zXtIQzK8Xc/maxresdefault.jpg" })
product5.save

product6 = Product.new({ name: "Another New Thing", price: 99, description: "This thing is even newer", image_url: "https://i.ytimg.com/vi/boSfiF-ItwI/maxresdefault.jpg" })
product6.save
