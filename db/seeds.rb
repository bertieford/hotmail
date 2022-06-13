# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Clearing products"
Review.destroy_all
OrderProduct.destroy_all
Product.destroy_all
Order.destroy_all
puts "Deleting Users"
User.destroy_all

puts "Creating admin"
admin = User.create!(first_name: "admin", email: "admin@admin.com", password: "123456", admin: true)
puts "Adding customers"
sam = User.create!(first_name: "Sam", email: "sam@email.com", password: "123456")
rob = User.create!(first_name: "Rob", email: "rob@email.com", password: "123456")
charlie = User.create!(first_name: "Charlie", email: "charlie@email.com", password: "123456")
aziz = User.create!(first_name: "Aziz", email: "aziz@email.com", password: "123456")
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

sauce6 = Product.create!(name: "Honey Badger Hot Sauce", description: "The crew at Torchbearer know how to up the heat without sacrificing flavor, and this sauce’s potent mix of Scorpion peppers and Carolina Reapers combined with honey and mustard is all the proof you’ll need. Like a souped up version of the honey mustard you dunked your chicken nuggets in as a kid (no judgements if you never stopped), this sauce is another testament to Torchbearer’s deft use of craveable flavors, big heat and their signature silky smooth texture. Pepper heads will enjoy this with chicken tenders, roast pork, and crispy brussel sprouts. ", manufacturer: "Torchbearer Sauces", price: 14.00, ingredients: "Apple cider vinegar, Scorpion pepper, honey, distilled white vinegar, water, canola oil, brown sugar, mustard powder, Carolina Reaper pepper, white sugar, cayenne pepper powder, black pepper, turmeric, mustard seed, granulated garlic, salt, garlic ", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/honeybadger.jpg?v=1616537141&width=680")
sauce6.photo.attach(io: file, filename: "Honeybadger_image", content_type: "image/png")

sauce7 = Product.create!(name: "Bhutila Fire Hot Sauce", description: "Our first hot sauce from Honduras is bringing tropical heat to the #7 wing on Hot Ones Season 16! Featuring a smoked version of the Caribbean’s favorite pepper, the Scotch bonnet, as well as Chocolate Ghost peppers, Bhutila gets its name from an island off the coast of Honduras. And it’s a fire you can feel good about - a portion of all sales goes to protecting their coral reef! Completed with bitter orange for fruity and citrus notes, it’s delicious with beans and rice, guacamole or as a marinade for carne asada. ", manufacturer: "Chile Lengua de Fuego", price: 14.00, ingredients: "Apple cider vinegar, ghost peppers + mixed peppers, sea salt, garlic", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/hotones-bhutilafire-hotsauce.jpg?v=1631222766&width=680")
sauce7.photo.attach(io: file, filename: "Bhutila_image", content_type: "image/png")

sauce8 = Product.create!(name: "Collards N Ghost Hot Sauce", description: "Collard greens in a hot sauce? You read that correctly, and you better believe this sauce will change your mind about leafy greens! Harlem-based powerhouse Chef Sam Davis-Allonce is back for Hot Ones Season 18 with this savory, sweet and smoky sauce that tastes like it’s been cooked with love for hours and hours. Feel-good flavor of slow roasted greens ushers in creeping ghost pepper heat. Enjoy with comfort food favorites like BECs, mac n cheese and turkey sandwiches. Also delicious on grilled shrimp! ", manufacturer: "Hot N Saucy", price: 12.00, ingredients: "Collard greens, ghost peppers, extra virgin olive oil, onion, apple cider vinegar, garlic, brown sugar, salt, water", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/HOTONES-SEASON18-collardsnghost_28e5767f-d2c4-4b58-b7cc-a443e69dd93b.jpg?v=1652971436&width=680")
sauce8.photo.attach(io: file, filename: "Collards_image", content_type: "image/png")

sauce9 = Product.create!(name: "Tyrfing’s Curse", description: "Hot Ones first hot sauce from South Dakota! Searing in the seventh spot in Hot Ones Season 18 lineup, Tyrfing’s Curse is a tart and gingery blend of orange juice, ghost pepper, habanero, and Scorpion peppers. Tartness from the citrus seems to amplify the sting of the chili peppers, waking up your taste buds. Despite its intimidating name and pepper blend, Tyrfing’s Curse is easy to love. Try it on everything from salad to fried rice. ", manufacturer: "Halogi Hot Sauce", price: 14.00, ingredients: "Yellow bell pepper, red onion, white wine vinegar, baby carrots, orange juice, apple cider vinegar, vinegar, water, ghost peppers, Scorpion Peppers, habanero pepper, garlic, ginger, spices, salt, cayenne pepper", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/HOTONES-SEASON18-Halogi.jpg?v=1652731253&width=680")
sauce9.photo.attach(io: file, filename: "Tyrfing_image", content_type: "image/png")

sauce10 = Product.create!(name: "Island Wings Pineapple Cayenne Pepper Hot Sauce", description: "Say “Aloha” to flavor with Hot Ones Season 18’s #2 sauce! A family business hailing from beautiful Hawaii, maker Adoboloco has infused this hot sauce with tropical flare thanks to fire-roasted pineapple. The caramelized pineapple takes on a whole new level of sweet goodness, then is blitzed with Cayenne peppers until it becomes silky smooth perfection. The perfect mild hot sauce for summer eats or when you want to be transported to an island paradise. ", manufacturer: "Adoboloco", price: 12.00, ingredients: "Pineapple, chili pepper, red wine vinegar, honey, onion powder, nutritional yeast, sea salt, mustard seed powder, spices", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/HOTONES-SEASON18Adoboloco.jpg?v=1652724983&width=680")
sauce10.photo.attach(io: file, filename: "IslandWings_image", content_type: "image/png")

sauce11 = Product.create!(name: "Caribbean Style Mango Habanero", description: "A taste of the Caribbean by way of Canada! Hot Ones alum Heartbeat Hot Sauce channeled tropical island vibes with this mango-forward, medium heat hot sauce. A hint of lime complements the sweet-tart fruit and bright notes of orange habanero. Vibrant cilantro adds the final touch needed to transport any meal to spicy paradise. A must-have for grilled shrimp, salads, rice or on Caribbean beef patties. ", manufacturer: "Heartbeat Hot Sauce", price: 12.00, ingredients: "Mango, rice wine vinegar, orange bell pepper, onion, lime juice, orange habanero, canola oil, organic cane sugar, garlic, sea salt, cilantro, spices", bottle_size: "6oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Heartbeat-Mangohab.jpg?v=1647586964&width=680")
sauce11.photo.attach(io: file, filename: "CaribeanStyle_image", content_type: "image/png")

sauce12 = Product.create!(name: "Truffle Fire Hot Sauce", description: "Truffle hot sauce has been trending for a while now, and this is one of the most fun spins on the genre so far! The name says it all - it’s fire. On first taste, you get tangy vinegar and pepper flavor, but then the summer truffles trumpet in a fanfare of addictingly rich umami notes. Plus, Seed Ranch is known for making hot sauces that are all natural, organic and good for you, with no gums or artificial colorings. Trust us, you’re going to want to apply this to morning eggs, burgers, hummus, and everything in between. Don’t forget to dip your french fries in this truffle goodness! ", manufacturer: "Seed Ranch Flavor Co", price: 16.00, ingredients: "Crushed tomato*, filtered water, white vinegar*, truffle pepper blend (ghost pepper+, Carolina Reaper pepper+, chile de árbol+, truffle juice+, summer truffles+ (tuber aestivum), salt, vegetable fiber+, organic* and natural truffle flavor+), dates*, carrots+, garlic*, olive oil*, chickpea miso*, sea salt, nutritional yeast+, smoked paprika+, kelp*, agar agar (sea vegetables)+

* = organic ingredients  + = non-gmo ingredients", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/trufflefire.jpg?v=1636403419&width=680")
sauce12.photo.attach(io: file, filename: "TruffleFire_image", content_type: "image/png")

sauce13 = Product.create!(name: "Bliss and Vinegar Hot Sauce", description: "Yellowbird has been a favorite of Austin, Texas for years. Now they’re making their Hot Ones debut in Season 16 with this unique and tangy mild hot sauce. Tart vinegar adds bite, strawberries and dates add sweetness, serranos bring mild heat and coconut gives it all a dreamy texture. The tiniest hint of cinnamon makes you go back for more. A must have on roasted sweet potatoes, chicken, sandwiches or a charcuterie board.

CONTAINS TREE NUTS: Coconut", manufacturer: "Yellowbird", price: 12.00, ingredients: "Organic distilled vinegar, organic red serrano peppers, organic rice bran oil, strawberries, organic dates, organic coconut cream (organic coconut kernel extract, water), salt, onions, cinnamon, ginger", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/hotones-yellowbird-hotsauce.jpg?v=1631223156&width=680")
sauce13.photo.attach(io: file, filename: "Bliss_image", content_type: "image/png")

sauce14 = Product.create!(name: "Mynahs Brah! Hot Sauce", description: "Our friends from The Aloha State have created some pretty spicy sauces over the years, but this new recipe is sweet, smoky, and mild enough to have you using the whole bottle! Its name is a playful Hawaiian Pidgin mix of the words “minor” (aka no big deal) and the name for the Myna bird (introduced to Hawaii in 1865). A smooth blend of roasted sweet jalapenos, honey, fresh garlic and sea salt, Mynahs Brah is perfectly simple and downright chuggable. Try it on roasted potatoes or splashed in a winter soup, and don’t forget to stock up again before it’s grilling season. ", manufacturer: "Adoboloco", price: 12.00, ingredients: "Peppers (red peppers, paprika, jalapeno), apple cider vinegar, organic honey, onion powder, sea salt, garlic ", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/adoboloco.jpg?v=1628199947&width=680")
sauce14.photo.attach(io: file, filename: "Mynahs_image", content_type: "image/png")

sauce15 = Product.create!(name: "Barbados Style", description: "A new knockout Bajan sauce for all our mustard-lovers! Barbados style sauces are known for having two things in common: they all contain mustard and they’ve all been hits with Hot Ones’ fans and celebrity guests. Mark’s carries on that tradition with scotch bonnet peppers, onions, tropical fruits, and a kiss of island rum. The first taste is all fresh peppers with a hint of sweetness, but then in comes the sharpness of the mustard to pick up the lingering heat. A must-have on morning eggs, a turkey sandwich or roasted salmon. Also great on salads!", manufacturer: "Mark's Hot Sauce", price: 12.00, ingredients: "Spring water, onion, fresh hot & sweet peppers, pineapple, mango, papaya, carrot, white vinegar, prepared mustard, sea salt, organic white wine vinegar, rum, organic garlic, spices", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Marks.jpg?v=1616537067&width=680")
sauce15.photo.attach(io: file, filename: "Barbados_image", content_type: "image/png")


sauce17 = Product.create!(name: "Evolution Hot Sauce", description: "The newest hot sauce from Da Bomb!
  For years Spice Lords have asked us, “Where’s Da Bomb?” We’ve only ever carried all-natural hot sauces, which meant no Da Bomb Beyond Insanity, the vile elixir feared by celebrities and guzzled by Sean Evans. When we pointed this out to the good folks who make Da Bomb hot sauces, they were more than happy to oblige our natural bent. Introducing Da Bomb Evolution! This fresh take on the hotly hyped original packs much of the same heat but with loads of flavor. Fiery red super hot scorpion peppers are balanced with hearty spices like paprika and turmeric, as well as sugar, garlic and lemon for a sauce that stops you in your tracks as much for its savory flavor as its heat. A hint of delicate herbs like cilantro and mint finish things off and leave you wanting another bite. Hot enough to light up friends at your next wing challenge, but tasty enough to amp up shrimp and grits, rotisserie chicken or oven-roasted cauliflower. The Evolution of Da Bomb is here!", manufacturer: "Da Bomb", price: 12.00, ingredients: "Red hot chili peppers, water, vinegar, salt, spices (including paprika and turmeric), minced garlic, cane sugar, garlic powder, extra virgin olive oil, onion powder, lemon juice concentrate, cilantro, mint", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/dabombevolution1.jpg?v=1616536949&width=680")
sauce17.photo.attach(io: file, filename: "Evolution_image", content_type: "image/png")

puts "DONE"
