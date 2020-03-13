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

product = Product.new({ name: "Hoodie", price: 19, description: "Soft knit zip-front hoodie with pullstrings", supplier_id: 1 })
product.save

product2 = Product.new({ name: "Ankle Socks", price: 12, description: "Moisture wicking knit socks", supplier_id: 2 })
product2.save

product3 = Product.new({ name: "Slim-fit Khakis", price: 24, description: "Slim fit woven pants, 85% cotton, 15% lycra", supplier_id: 1 })
product3.save

product4 = Product.new({ name: "Cool Widget", price: 30, description: "Widget that does cool things", supplier_id: 3 })
product4.save

product5 = Product.new({ name: "New Thing", price: 15, description: "This thing is so new", supplier_id: 3 })
product5.save

product6 = Product.new({ name: "Another New Thing", price: 99, description: "This thing is even newer", supplier_id: 3 })
product6.save

image = Image.new({ url: "https://oldnavy.gap.com/webcontent/0010/698/786/cn10698786.jpg", product_id: 1 })
image.save

image2 = Image.new({ url: "https://images-na.ssl-images-amazon.com/images/I/710qXy1vL4L._AC_UX679_.jpg", product_id: 2 })
image2.save

image3 = Image.new({ url: "https://images-na.ssl-images-amazon.com/images/I/81MhC1GMG2L._AC_UL1500_.jpg", product_id: 2 })
image3.save

image4 = Image.new({ url: "https://i.pinimg.com/originals/fb/9e/66/fb9e66a911b869ac03de2807ce39b125.jpg", product_id: 3 })
image4.save

image5 = Image.new({ url: "https://support.apple.com/library/content/dam/edam/applecare/images/en_US/social/ios13-iphone-xs-widget-social-card.jpg", product_id: 4 })
image5.save

image6 = Image.new({ url: "https://i.ytimg.com/vi/2zXtIQzK8Xc/maxresdefault.jpg", product_id: 5 })
image6.save

image7 = Image.new({ url: "https://i.ytimg.com/vi/boSfiF-ItwI/maxresdefault.jpg", product_id: 6 })
image7.save
