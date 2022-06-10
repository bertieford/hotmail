# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Clearing products"
Product.destroy_all
puts "Creating products"
sauce1 = Product.create!(name: "Hamajang Smoked Ghost Pepper Hot Sauce", description: "The combination of smoked Bhut Jolokia (Ghost Pepper) and fiery Habanero give this sauce an intense level of heat and flavor. Watch out, because the Ghost Pepper builds and may reach its hottest after 20-30 minutes. This sauce can add heat & flavor to your meal, just make sure you know what you're doing.", manufacturer: "Adoboloco", price: 10.00, ingredients: "Apple cider vinegar, ghost peppers + mixed peppers, sea salt, garlic", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/6175646515298.jpg?v=1628199764&width=680")
sauce1.photo.attach(io: file, filename: "Hamajang_image", content_type: "image/png")

sauce2 = Product.create!(name: "Smokin' Ed's Picnic Hot Sauce", description: "Summer in a hot sauce! This combination of fruity Scotch Bonnet peppers, crisp cucumber and sweet carrot juice will have you grabbing your picnic basket and heading to the park. Bright and floral flavors are balanced with aromatic mustard and a hint of tarragon and coriander. Try it on everything from cookout classics like burgers, to picnic eats like sandwiches and salads - it’s a must-have for warm weather fare!", manufacturer: "Puckerbutt Pepper Co", price: 12.00, ingredients: "Cucumber, carrot juice made from concentrate, scotch bonnet pepper mash (scotch bonnet peppers and vinegar), apple cider vinegar, onions, garlic (garlic, water), dry mustard, kosher salt, tarragon, ginger, coriander", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/picnicsauce.jpg?v=1622751531&width=680")
sauce2.photo.attach(io: file, filename: "Ed_image", content_type: "image/png")

sauce3 = Product.create!(name: "Nugget Honey", description: "Our sweetest Hot Ones sauce yet, perfect for pizza, fried chicken, cocktails and more! Hot Ones Nugget Honey starts with American-made craft gin from Barr Hill of Vermont. The gin is infused with Smokin’ Ed’s Pepper X in a unique process never tried before in a hot sauce. Once the gin has soaked up the powerful heat from the Pepper X (as well as a hint of its earthy flavor), we blend it with pure alfalfa honey from the Wind River Valley of Wyoming. The result is sweet golden goodness with a mild, warming heat. When you taste it straight up it can be a stinger, but when drizzled over waffles, cheese platters or even your favorite ice cream, it’s the perfect balance of sugar and spice. It’s the golden touch for enhancing your favorite meals and the creative possibilities are endless!", manufacturer: "Hot Ones Hot Sauce
", price: 12.00, ingredients: "American alfalfa honey, gin, Pepper X", bottle_size: "9oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/NuggetHoney11.jpg?v=1616537010&width=680")
sauce3.photo.attach(io: file, filename: "Nugget_Honey_image", content_type: "image/png")

sauce4 = Product.create!(name: ".718 Hot Sauce", description: "Hailing from HEATONIST’s hometown of Brooklyn, New York, Señor Lechuga mixes high-quality, craft ingredients with unique chilis for big flavor and nuanced heat. Gracing the #6 spot on Hot Ones Season 16, .718 features sour black lime and buffalo ginger for tartness and guajillo and pasilla peppers for subtle smoke and sweetness. Made with the highest quality and most potent spices, you’ll get lost in the flavor before the fiery finish, when ghost pepper heat causes your nostrils to flare in excitement. Try it on everything from tacos to grilled veg to barbecue chicken. Adds excellent flavor to vegetarian soups!", manufacturer: "Señor Lechuga", price: 14.00, ingredients: "Vinegar, ghost peppers, red bell peppers, guajillo peppers, pasilla peppers, red onion, Himalayan sea salt, garlic, black lime, sweet paprika, royal cinnamon, buffalo ginger", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/hotones-senorlechuga-hotsauce.jpg?v=1631223130&width=680")
sauce4.photo.attach(io: file, filename: ".718_image", content_type: "image/png")

sauce5 = Product.create!(name: "Tears of the Sun Private Reserve Hot Sauce", description: "High River Sauces has been with us since the beginning - one of their sauces was even featured way back on Hot Ones Season 2! So when we needed a sauce for the sixth wing in the Season 14 lineup, High River maker Steve Seabury created this private reserve version with guitarist Chris Caffery of Trans-Siberian Orchestra. A sunshiny mix of mangos, papaya, peaches and pineapple blends perfectly with the bright, citrusy notes of Peach Ghost-Scorpion peppers, which give this sauce its instant, building heat. It’s a delicious stand in for chutney paired with rich snacks like samosas or fried goat cheese (just trust us).", manufacturer: "High River Sauces", price: 12.00, ingredients: "Peach Ghost Scorpion pepper mash (Peach Ghost Scorpion peppers, vinegar), apple cider vinegar, mangos, papaya, orange habanero mash (orange habanero peppers, salt), peaches (peaches, water, natural flavor, sugar), pineapple (pineapple, pineapple juice), water, light brown sugar (cane sugar and molasses), lime juice, ginger root, salt, garlic, crushed red pepper", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/TEARS.jpg?v=1616536993&width=680")
sauce5.photo.attach(io: file, filename: "Tears_image", content_type: "image/png")


puts "Products created"
puts "Deleting Users"
User.destroy_all
puts "Creating admin"
admin = User.create!(first_name: "admin", email: "admin@admin.com", password: "123456", admin: true)
