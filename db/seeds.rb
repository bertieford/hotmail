# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
puts "Deleting reviews"
Review.destroy_all
OrderProduct.destroy_all
puts "Clearing products"
Product.destroy_all
Checkout.destroy_all
puts "Deleting orders"
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

sauce1 = Product.create!(name: "Hamajang Smoked Ghost Pepper Hot Sauce", description: "The combination of smoked Bhut Jolokia (Ghost Pepper) and fiery Habanero give this sauce an intense level of heat and flavor. Watch out, because the Ghost Pepper builds and may reach its hottest after 20-30 minutes. This sauce can add heat & flavor to your meal, just make sure you know what you're doing.", manufacturer: "Adoboloco", price: 10, ingredients: "Apple cider vinegar, ghost peppers + mixed peppers, sea salt, garlic", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/6175646515298.jpg?v=1628199764&width=680")
sauce1.photo.attach(io: file, filename: "Hamajang_image", content_type: "image/png")

sauce2 = Product.create!(name: "Smokin' Ed's Picnic Hot Sauce", description: "Summer in a hot sauce! This combination of fruity Scotch Bonnet peppers, crisp cucumber and sweet carrot juice will have you grabbing your picnic basket and heading to the park. Bright and floral flavors are balanced with aromatic mustard and a hint of tarragon and coriander. Try it on everything from cookout classics like burgers, to picnic eats like sandwiches and salads - it’s a must-have for warm weather fare!", manufacturer: "Puckerbutt Pepper Co", price: 12, ingredients: "Cucumber, carrot juice made from concentrate, scotch bonnet pepper mash (scotch bonnet peppers and vinegar), apple cider vinegar, onions, garlic (garlic, water), dry mustard, kosher salt, tarragon, ginger, coriander", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/picnicsauce.jpg?v=1622751531&width=680")
sauce2.photo.attach(io: file, filename: "Ed_image", content_type: "image/png")

sauce3 = Product.create!(name: "Nugget Honey", description: "Our sweetest Hot Ones sauce yet, perfect for pizza, fried chicken, cocktails and more! Hot Ones Nugget Honey starts with American-made craft gin from Barr Hill of Vermont. The gin is infused with Smokin’ Ed’s Pepper X in a unique process never tried before in a hot sauce. Once the gin has soaked up the powerful heat from the Pepper X (as well as a hint of its earthy flavor), we blend it with pure alfalfa honey from the Wind River Valley of Wyoming. The result is sweet golden goodness with a mild, warming heat. When you taste it straight up it can be a stinger, but when drizzled over waffles, cheese platters or even your favorite ice cream, it’s the perfect balance of sugar and spice. It’s the golden touch for enhancing your favorite meals and the creative possibilities are endless!", manufacturer: "Hot Ones Hot Sauce
", price: 12, ingredients: "American alfalfa honey, gin, Pepper X", bottle_size: "9oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/NuggetHoney11.jpg?v=1616537010&width=680")
sauce3.photo.attach(io: file, filename: "Nugget_Honey_image", content_type: "image/png")

sauce4 = Product.create!(name: ".718 Hot Sauce", description: "Hailing from HEATONIST’s hometown of Brooklyn, New York, Señor Lechuga mixes high-quality, craft ingredients with unique chilis for big flavor and nuanced heat. Gracing the #6 spot on Hot Ones Season 16, .718 features sour black lime and buffalo ginger for tartness and guajillo and pasilla peppers for subtle smoke and sweetness. Made with the highest quality and most potent spices, you’ll get lost in the flavor before the fiery finish, when ghost pepper heat causes your nostrils to flare in excitement. Try it on everything from tacos to grilled veg to barbecue chicken. Adds excellent flavor to vegetarian soups!", manufacturer: "Señor Lechuga", price: 14, ingredients: "Vinegar, ghost peppers, red bell peppers, guajillo peppers, pasilla peppers, red onion, Himalayan sea salt, garlic, black lime, sweet paprika, royal cinnamon, buffalo ginger", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/hotones-senorlechuga-hotsauce.jpg?v=1631223130&width=680")
sauce4.photo.attach(io: file, filename: ".718_image", content_type: "image/png")

sauce5 = Product.create!(name: "Tears of the Sun Private Reserve Hot Sauce", description: "High River Sauces has been with us since the beginning - one of their sauces was even featured way back on Hot Ones Season 2! So when we needed a sauce for the sixth wing in the Season 14 lineup, High River maker Steve Seabury created this private reserve version with guitarist Chris Caffery of Trans-Siberian Orchestra. A sunshiny mix of mangos, papaya, peaches and pineapple blends perfectly with the bright, citrusy notes of Peach Ghost-Scorpion peppers, which give this sauce its instant, building heat. It’s a delicious stand in for chutney paired with rich snacks like samosas or fried goat cheese (just trust us).", manufacturer: "High River Sauces", price: 12, ingredients: "Peach Ghost Scorpion pepper mash (Peach Ghost Scorpion peppers, vinegar), apple cider vinegar, mangos, papaya, orange habanero mash (orange habanero peppers, salt), peaches (peaches, water, natural flavor, sugar), pineapple (pineapple, pineapple juice), water, light brown sugar (cane sugar and molasses), lime juice, ginger root, salt, garlic, crushed red pepper", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/TEARS.jpg?v=1616536993&width=680")
sauce5.photo.attach(io: file, filename: "Tears_image", content_type: "image/png")

sauce6 = Product.create!(name: "Honey Badger Hot Sauce", description: "The crew at Torchbearer know how to up the heat without sacrificing flavor, and this sauce’s potent mix of Scorpion peppers and Carolina Reapers combined with honey and mustard is all the proof you’ll need. Like a souped up version of the honey mustard you dunked your chicken nuggets in as a kid (no judgements if you never stopped), this sauce is another testament to Torchbearer’s deft use of craveable flavors, big heat and their signature silky smooth texture. Pepper heads will enjoy this with chicken tenders, roast pork, and crispy brussel sprouts. ", manufacturer: "Torchbearer Sauces", price: 14, ingredients: "Apple cider vinegar, Scorpion pepper, honey, distilled white vinegar, water, canola oil, brown sugar, mustard powder, Carolina Reaper pepper, white sugar, cayenne pepper powder, black pepper, turmeric, mustard seed, granulated garlic, salt, garlic ", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/honeybadger.jpg?v=1616537141&width=680")
sauce6.photo.attach(io: file, filename: "Honeybadger_image", content_type: "image/png")

sauce7 = Product.create!(name: "Bhutila Fire Hot Sauce", description: "Our first hot sauce from Honduras is bringing tropical heat to the #7 wing on Hot Ones Season 16! Featuring a smoked version of the Caribbean’s favorite pepper, the Scotch bonnet, as well as Chocolate Ghost peppers, Bhutila gets its name from an island off the coast of Honduras. And it’s a fire you can feel good about - a portion of all sales goes to protecting their coral reef! Completed with bitter orange for fruity and citrus notes, it’s delicious with beans and rice, guacamole or as a marinade for carne asada. ", manufacturer: "Chile Lengua de Fuego", price: 14, ingredients: "Apple cider vinegar, ghost peppers + mixed peppers, sea salt, garlic", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/hotones-bhutilafire-hotsauce.jpg?v=1631222766&width=680")
sauce7.photo.attach(io: file, filename: "Bhutila_image", content_type: "image/png")

sauce8 = Product.create!(name: "Collards N Ghost Hot Sauce", description: "Collard greens in a hot sauce? You read that correctly, and you better believe this sauce will change your mind about leafy greens! Harlem-based powerhouse Chef Sam Davis-Allonce is back for Hot Ones Season 18 with this savory, sweet and smoky sauce that tastes like it’s been cooked with love for hours and hours. Feel-good flavor of slow roasted greens ushers in creeping ghost pepper heat. Enjoy with comfort food favorites like BECs, mac n cheese and turkey sandwiches. Also delicious on grilled shrimp! ", manufacturer: "Hot N Saucy", price: 12, ingredients: "Collard greens, ghost peppers, extra virgin olive oil, onion, apple cider vinegar, garlic, brown sugar, salt, water", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/HOTONES-SEASON18-collardsnghost_28e5767f-d2c4-4b58-b7cc-a443e69dd93b.jpg?v=1652971436&width=680")
sauce8.photo.attach(io: file, filename: "Collards_image", content_type: "image/png")

sauce9 = Product.create!(name: "Tyrfing’s Curse", description: "Hot Ones first hot sauce from South Dakota! Searing in the seventh spot in Hot Ones Season 18 lineup, Tyrfing’s Curse is a tart and gingery blend of orange juice, ghost pepper, habanero, and Scorpion peppers. Tartness from the citrus seems to amplify the sting of the chili peppers, waking up your taste buds. Despite its intimidating name and pepper blend, Tyrfing’s Curse is easy to love. Try it on everything from salad to fried rice. ", manufacturer: "Halogi Hot Sauce", price: 14, ingredients: "Yellow bell pepper, red onion, white wine vinegar, baby carrots, orange juice, apple cider vinegar, vinegar, water, ghost peppers, Scorpion Peppers, habanero pepper, garlic, ginger, spices, salt, cayenne pepper", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/HOTONES-SEASON18-Halogi.jpg?v=1652731253&width=680")
sauce9.photo.attach(io: file, filename: "Tyrfing_image", content_type: "image/png")

sauce10 = Product.create!(name: "Island Wings Pineapple Cayenne Pepper Hot Sauce", description: "Say “Aloha” to flavor with Hot Ones Season 18’s #2 sauce! A family business hailing from beautiful Hawaii, maker Adoboloco has infused this hot sauce with tropical flare thanks to fire-roasted pineapple. The caramelized pineapple takes on a whole new level of sweet goodness, then is blitzed with Cayenne peppers until it becomes silky smooth perfection. The perfect mild hot sauce for summer eats or when you want to be transported to an island paradise. ", manufacturer: "Adoboloco", price: 12, ingredients: "Pineapple, chili pepper, red wine vinegar, honey, onion powder, nutritional yeast, sea salt, mustard seed powder, spices", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/HOTONES-SEASON18Adoboloco.jpg?v=1652724983&width=680")
sauce10.photo.attach(io: file, filename: "IslandWings_image", content_type: "image/png")

sauce11 = Product.create!(name: "Caribbean Style Mango Habanero", description: "A taste of the Caribbean by way of Canada! Hot Ones alum Heartbeat Hot Sauce channeled tropical island vibes with this mango-forward, medium heat hot sauce. A hint of lime complements the sweet-tart fruit and bright notes of orange habanero. Vibrant cilantro adds the final touch needed to transport any meal to spicy paradise. A must-have for grilled shrimp, salads, rice or on Caribbean beef patties. ", manufacturer: "Heartbeat Hot Sauce", price: 12, ingredients: "Mango, rice wine vinegar, orange bell pepper, onion, lime juice, orange habanero, canola oil, organic cane sugar, garlic, sea salt, cilantro, spices", bottle_size: "6oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Heartbeat-Mangohab.jpg?v=1647586964&width=680")
sauce11.photo.attach(io: file, filename: "CaribeanStyle_image", content_type: "image/png")

sauce12 = Product.create!(name: "Truffle Fire Hot Sauce", description: "Truffle hot sauce has been trending for a while now, and this is one of the most fun spins on the genre so far! The name says it all - it’s fire. On first taste, you get tangy vinegar and pepper flavor, but then the summer truffles trumpet in a fanfare of addictingly rich umami notes. Plus, Seed Ranch is known for making hot sauces that are all natural, organic and good for you, with no gums or artificial colorings. Trust us, you’re going to want to apply this to morning eggs, burgers, hummus, and everything in between. Don’t forget to dip your french fries in this truffle goodness! ", manufacturer: "Seed Ranch Flavor Co", price: 16, ingredients: "Crushed tomato*, filtered water, white vinegar*, truffle pepper blend (ghost pepper+, Carolina Reaper pepper+, chile de árbol+, truffle juice+, summer truffles+ (tuber aestivum), salt, vegetable fiber+, organic* and natural truffle flavor+), dates*, carrots+, garlic*, olive oil*, chickpea miso*, sea salt, nutritional yeast+, smoked paprika+, kelp*, agar agar (sea vegetables)+

* = organic ingredients  + = non-gmo ingredients", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/trufflefire.jpg?v=1636403419&width=680")
sauce12.photo.attach(io: file, filename: "TruffleFire_image", content_type: "image/png")

sauce13 = Product.create!(name: "Bliss and Vinegar Hot Sauce", description: "Yellowbird has been a favorite of Austin, Texas for years. Now they’re making their Hot Ones debut in Season 16 with this unique and tangy mild hot sauce. Tart vinegar adds bite, strawberries and dates add sweetness, serranos bring mild heat and coconut gives it all a dreamy texture. The tiniest hint of cinnamon makes you go back for more. A must have on roasted sweet potatoes, chicken, sandwiches or a charcuterie board.

CONTAINS TREE NUTS: Coconut", manufacturer: "Yellowbird", price: 12, ingredients: "Organic distilled vinegar, organic red serrano peppers, organic rice bran oil, strawberries, organic dates, organic coconut cream (organic coconut kernel extract, water), salt, onions, cinnamon, ginger", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/hotones-yellowbird-hotsauce.jpg?v=1631223156&width=680")
sauce13.photo.attach(io: file, filename: "Bliss_image", content_type: "image/png")

sauce14 = Product.create!(name: "Mynahs Brah! Hot Sauce", description: "Our friends from The Aloha State have created some pretty spicy sauces over the years, but this new recipe is sweet, smoky, and mild enough to have you using the whole bottle! Its name is a playful Hawaiian Pidgin mix of the words “minor” (aka no big deal) and the name for the Myna bird (introduced to Hawaii in 1865). A smooth blend of roasted sweet jalapenos, honey, fresh garlic and sea salt, Mynahs Brah is perfectly simple and downright chuggable. Try it on roasted potatoes or splashed in a winter soup, and don’t forget to stock up again before it’s grilling season. ", manufacturer: "Adoboloco", price: 12, ingredients: "Peppers (red peppers, paprika, jalapeno), apple cider vinegar, organic honey, onion powder, sea salt, garlic ", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/adoboloco.jpg?v=1628199947&width=680")
sauce14.photo.attach(io: file, filename: "Mynahs_image", content_type: "image/png")

sauce15 = Product.create!(name: "Barbados Style", description: "A new knockout Bajan sauce for all our mustard-lovers! Barbados style sauces are known for having two things in common: they all contain mustard and they’ve all been hits with Hot Ones’ fans and celebrity guests. Mark’s carries on that tradition with scotch bonnet peppers, onions, tropical fruits, and a kiss of island rum. The first taste is all fresh peppers with a hint of sweetness, but then in comes the sharpness of the mustard to pick up the lingering heat. A must-have on morning eggs, a turkey sandwich or roasted salmon. Also great on salads!", manufacturer: "Mark's Hot Sauce", price: 12, ingredients: "Spring water, onion, fresh hot & sweet peppers, pineapple, mango, papaya, carrot, white vinegar, prepared mustard, sea salt, organic white wine vinegar, rum, organic garlic, spices", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Marks.jpg?v=1616537067&width=680")
sauce15.photo.attach(io: file, filename: "Barbados_image", content_type: "image/png")


sauce17 = Product.create!(name: "Evolution Hot Sauce", description: "The newest hot sauce from Da Bomb!
  For years Spice Lords have asked us, “Where’s Da Bomb?” We’ve only ever carried all-natural hot sauces, which meant no Da Bomb Beyond Insanity, the vile elixir feared by celebrities and guzzled by Sean Evans. When we pointed this out to the good folks who make Da Bomb hot sauces, they were more than happy to oblige our natural bent. Introducing Da Bomb Evolution! This fresh take on the hotly hyped original packs much of the same heat but with loads of flavor. Fiery red super hot scorpion peppers are balanced with hearty spices like paprika and turmeric, as well as sugar, garlic and lemon for a sauce that stops you in your tracks as much for its savory flavor as its heat. A hint of delicate herbs like cilantro and mint finish things off and leave you wanting another bite. Hot enough to light up friends at your next wing challenge, but tasty enough to amp up shrimp and grits, rotisserie chicken or oven-roasted cauliflower. The Evolution of Da Bomb is here!", manufacturer: "Da Bomb", price: 12, ingredients: "Red hot chili peppers, water, vinegar, salt, spices (including paprika and turmeric), minced garlic, cane sugar, garlic powder, extra virgin olive oil, onion powder, lemon juice concentrate, cilantro, mint", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/dabombevolution1.jpg?v=1616536949&width=680")
sauce17.photo.attach(io: file, filename: "Evolution_image", content_type: "image/png")

sauce18 = Product.create!(name: "Habanero Hot Sauce", description: "Portland's famous table sauce, Secret Aardvark Habanero's unique Caribbean / Tex-Mex hybrid is made with flavorful Habanero peppers and roasted tomatoes. You'll want to use it on everything, so be careful if you only get one bottle.", manufacturer: "Secret Aardvark Trading Co", price: 12, ingredients: "White wine vinegar, roasted tomatoes, habanero peppers, onion, carrot, sugar, prepared mustard, water, kosher salt, cornstarch, herbs & spices", bottle_size: "8oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/460749635593.jpg?v=1628213474&width=680")
sauce18.photo.attach(io: file, filename: "HabaneroHotSuace_image", content_type: "image/png")

sauce19 = Product.create!(name: "Pineapple & Habanero Hot Sauce", manufacturer: "Bravado Spice Co", price: 10, description: "Fresh pineapple dominates this sauce, shining through the habanero heat. Yellow bell pepper lends only a touch of sweetness. A great option for people who like fruit sauces but not overly sweet ones. Goes well with rice & beans, fish dishes, or mixed into a salad", ingredients: "Pineapple, white wine vinegar, yellow bell peppers, habanero, garlic, salt", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/880526524425.jpg?v=1628200986&width=680")
sauce19.photo.attach(io: file, filename: "PineappleHabaneroHotSauce_image", content_type: "image/png")

sauce20 = Product.create!(name: "Zombie Apocalypse Hot Sauce", manufacturer: "Torchbearer Sauces", price: 10, description: "The Zombie Apocalypse Hot Sauce lives up to its name, combining Ghost Peppers and Habaneros with a mix of spices, vegetables, and vinegar to create a slow burning blow torch. Some people will feel the heat right away, but others can take a few minutes for the full impact to set in. The heat can last up to 20 minutes, creating a perfect match between very high heat and amazing flavor. Try it on all your favorite foods - wings, chili, soups, steak or even a sandwich in need of a major kick.", ingredients: "Bhut jolokia peppers, habanero peppers, carrot, mandarin orange, tomatoes, distilled white vinegar, vegetable oil, garlic, sugar, spices", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/374377971721.jpg?v=1628214918&width=680")
sauce20.photo.attach(io: file, filename: "ZombieApocolypse_image", content_type: "image/png")

sauce21 = Product.create!(name: "Original Hot Sauce", manufacturer: "Howler Monkey", price: 8, description: "Howler Monkey Original is a nod to the traditional Panamanian-style hot sauce with a tangy vinegar base and scotch bonnet peppers. Turmeric and garlic are stand-out flavors, making this every-day use sauce truly original. Try it on everything, from eggs to chicken to salads.", ingredients: "Distilled vinegar, red scotch bonnet peppers, garlic, onions, mustard (distilled vinegar, # 1 mustard seed, salt, turmeric, spices), cumin, black pepper, turmeric ", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/2522930348148.jpg?v=1628209450&width=680")
sauce21.photo.attach(io: file, filename: "HowlerMonkey_image", content_type: "image/png")

sauce22 = Product.create!(name: "Guajillo & Red Jalapeno Hot Sauce", manufacturer: "Humble House", price: 12, description: "This third sauce from the San Antonio kitchen of Humble House is a well balanced red jalapeño and fresh garlic masterpiece. The guajillo peppers add a nice sweet touch to this south of the border Sriracha, landing at a solid mild heat level.", ingredients: "Aged chile paste (red jalapeños, fresh garlic, vinegar, guajillo peppers, kosher salt) vinegar, pickled red bell pepper, cane sugar", bottle_size: "9.5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/838886555657.jpg?v=1628209554&width=680")
sauce22.photo.attach(io: file, filename: "Guajillo_image", content_type: "image/png")

sauce23 = Product.create!(name: "Ancho & Morita Hot Sauce", manufacturer: "Humble House", price: 12, description: "A new crowd favorite here at hot sauce HQ, the Humble House Ancho is a sauce that begs to be squeezed on everything. It's rich and smoky from the mild Morita pepper (a smoked red jalapeño) and slightly sweet from tamarind. This is a BBQ/hot sauce hybrid that works great on rice and beans and grilled meats. Or eggs. Or chicken. Or anything!", ingredients: "Aged tamarind chili paste (raisins, tamarind concentrate, gluten-free soy sauce, balsamic vinegar, Morita chile, ancho chile, kosher salt), vinegar, cane sugar, fresh garlic", bottle_size: "10.4oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/394375069705.jpg?v=1628209506&width=680")
sauce23.photo.attach(io: file, filename: "Ancho_image", content_type: "image/png")

sauce24 = Product.create!(name: "Hippy Dippy Green Hot Sauce", manufacturer: "Angry Goat Pepper Co", price: 8, description: "Angry Goat Pepper Co's Hippy Dippy Green delivers a creamy texture thanks to the mix of avocado and olive oil. Kiwi fruit brings just enough sweetness to balance the jalapeños and serranos, while lime juice brightens up the roasted tomatillos. Great for tacos, salads, sandwiches, and especially chicken!", ingredients: " Fire roasted jalapeño peppers, fire roasted serrano peppers, water, lime juice, fire roasted tomatillos, kiwi fruit, agave nectar, avocado, tequila, olive oil, granulated garlic, sea salt, onion powder, cumin, black pepper, fresh cilantro", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/8190561419362.jpg?v=1628200144&width=680")
sauce24.photo.attach(io: file, filename: "Hippy_image", content_type: "image/png")

sauce25 = Product.create!(name: "Garlic Reaper Sauce Hot Sauce", manufacturer: "Torchbearer Sauces", price: 16, description: "The first ingredient is this hot sauce is Carolina Reaper, and the second ingredient is garlic. Need we say more? This sauce is unlike any other we’ve had on Hot Ones, with a rich oil base that gives it a creamy texture with just enough savory spices to round out that garlic. Try using it as a marinade for chicken or salmon, or add to a roast beef sandwich for an amazing lunchtime treat. Oh and be sure to have this bottle handy the next time you order a pizza...", ingredients: "Carolina Reaper pepper, garlic, canola oil, water, distilled white vinegar, lime juice, granulated garlic, mustard powder, chili powder, salt", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/7944157921378.jpg?v=1628214667&width=680")
sauce25.photo.attach(io: file, filename: "Guajillo_image", content_type: "image/png")

sauce26 = Product.create!(name: "Fiya! Fiya! Hot Sauce", manufacturer: "Adoboloco", price: 14, description: "This newest sauce from Adoboloco stays true to the maker’s Hawaiian roots with a ton of tangy apple cider vinegar but kicks it up a notch with a blend of four hot peppers including ghost, Trinidad scorpion, habanero & jalapeno. Rounded out with sea salt and garlic, Fiya! Fiya! is their hottest yet but is still usable for everyday applications. It’s super versatile, so try it on tacos, eggs, wings, sandwiches and everything in between.", ingredients: "Apple cider vinegar, chili peppers (jalapeno, dried Trinidad scorpion, habanero & ghost), sea salt, garlic ", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/FIYAFIYA_ea4072e4-1c2d-4ef6-b451-3a320e654e91.jpg?v=1628199607&width=680")
sauce26.photo.attach(io: file, filename: "Fiya_image", content_type: "image/png")

sauce27 = Product.create!(name: "Yuzu Heaven Hot Sauce", manufacturer: "Mellow Habanero", price: 24, description: "Friends of the Brooklyn hot sauce shop will recognize Mellow Habanero and our good friend Taku “Habanero Man” Kondo of ta-nm farm in Hyogo, Japan! This HEATONIST exclusive hot sauce combines Tak’s favorite golden habanero peppers with tangy, citrusy yuzu. The bright notes of the yuzu juice awaken the senses, leading the way for powerful up-front heat from the habanero. Balanced with mango and sea salt, it’s a one-of-a-kind sauce that can enliven any dish. Try it as a dipping sauce for sushi, on rice bowls, or mixed with soy sauce as a marinade for chicken or pork. Also delicious in cocktails! ", ingredients: "Organic habanero, rice vinegar, yuzu juice, yuzu peel, organic mango, sea salt", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/YUZU1.jpg?v=1628211120&width=680")
sauce27.photo.attach(io: file, filename: "Yuzu_image", content_type: "image/png")

sauce28 = Product.create!(name: "California Raisin Hot Sauce", manufacturer: "Small Axe Peppers", price: 10, description: "Oakland California Raisin honors beautiful local ingredients from the newest community gardens in Small Axe Pepper Co’s network. Sourcing jalapenos and serranos grown across Oakland, Small Axe blends them with another classic California export, sun-dried raisins. Breaking out of their boring red box, the raisins provide bold sweetness that is well balanced with carrots, garlic and paprika for a subtle smoky aftertaste. We love this one as a glaze on pork or chicken, and for homemade picadillo!", ingredients: "Apple cider vinegar, jalapeno peppers, serrano peppers, raisins, garlic, carrots, salt, brown sugar, smoked paprika", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Caliraisin1.jpg?v=1628213902&width=680")
sauce28.photo.attach(io: file, filename: "CaliRaisin_image", content_type: "image/png")

sauce29 = Product.create!(name: "Chipotle & Habanero Hot Sauce", manufacturer: "Fresco Sauce", price: 10, description: "Citrusy orange habaneros combine with smoky chipotles and bold garlic for your new go-to table sauce. A touch of added sugar plays to the fruit notes of the habanero to balance the whole thing out, then a quick blend with some olive oil enriches the texture and gives body. This highly versatile sauce adds depth to lean proteins like grilled chicken and also shines on burgers, or when used as a dip with fries! ", ingredients: "Habanero peppers, chipotle chili powder, carrots, distilled vinegar, olive oil, garlic, salt, sugar, black pepper, water", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Frescosauce.jpg?v=1628203950&width=680")
sauce29.photo.attach(io: file, filename: "ChipotleHabanero_image", content_type: "image/png")

sauce30 = Product.create!(name: "Maui No Ka Oi Hot Sauce", manufacturer: "Adoboloco", price: 10, description: "Everyone’s favorite Hawaiin sauce maker is back with an ode to the Valley Isle, Maui No Ka ‘Oi. In this scorcher, puckery apple cider vinegar splashes onto the palate before a wave of Trinidad Moruga Scorpion pepper heat crashes over you. The citrus-y notes from the Trini peppers add bright, tropical tones that pair perfectly with a bit of sea salt. At a solid 7.5 out of 10, this sauce will leave you feeling the Hawaiin heat. This versatile recipe could grace anything from an italian hero, to fish and chips, to cauliflower wings.", ingredients: "Apple cider vinegar, Trinidad Moruga Scorpion peppers, sea salt, garlic", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Mauiadoboloco.jpg?v=1628199898&width=680")
sauce30.photo.attach(io: file, filename: "Maui_image", content_type: "image/png")

sauce31 = Product.create!(name: "Keith's Chicken Sauce", manufacturer: "Keith's", price: 12, description: "Keith Habersberger of The Try Guys is known for his love of fried chicken, especially buffalo wings and ranch. When he challenged HEATONIST to come up with a new hot sauce flavor concept this was a natural place to start. The resulting Keith’s Chicken Sauce channels iconic ranch flavors with dill, parsley, and chives, but sweetens them up with smoked onions, garlic scapes, and Vermont maple syrup. Vinegar, zippy serrano peppers and roasted red pepper add tang while sour cream powder adds a creamy texture that makes this a must-have condiment. Perfect on chicken of all kinds, this sauce cuts through rich foods like fries or a grilled cheese with ease. A must try on pizza!", ingredients: "Organic distilled vinegar, serrano peppers, maple wood smoked onions, pure Vermont maple syrup, garlic scapes, roasted red peppers ( red peppers, water, salt, citric acid) sunflower oil, sour cream powder ( sour cream powder cream cultures and lactic acid, cultured nonfat milk solids, citric acid) salt, dill, parsley, chives, black pepper

CONTAINS MILK", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Keith_shotsauce.jpg?v=1628210167&width=680")
sauce31.photo.attach(io: file, filename: "KChicken_image", content_type: "image/png")

sauce32 = Product.create!(name: "Headless Horseradish Hot Sauce ", manufacturer: "Torchbearer Sauces", price: 14, description: "The Torchbearer team has a knack for crafting sauces that are outright addictive in terms of flavor and heat with a rich, craveable texture. This sauce features zippy, nostril-tickling horseradish as well as garlic, dry mustard and lemon that cut through the creamy texture and intense ghost pepper heat. Use it as a spread on a steak sandwich or as the best-ever dip for fries. ", ingredients: "Horseradish, ghost chili pepper, garlic, canola oil, water, chipotle peppers, lemon juice, distilled white vinegar, dijon mustard, horseradish powder, salt, chili powder, black pepper", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/headlesshorse.jpg?v=1628214754&width=680")
sauce32.photo.attach(io: file, filename: "HeadlessHorseradish_image", content_type: "image/png")

sauce33 = Product.create!(name: "Burn After Eating Hot Sauce", manufacturer: "Karma Sauce", price: 18, description: "Gene from Karma Sauce Co always comes up with unique flavor combinations and this is no exception. For Burn After Eating he sourced ajwain, a spice used in Indian cuisine that has a uniquely earthy and bitter flavor. With a secret combination of super-hot peppers including ghost, 7-Pot and scorpion, the sauce’s intense heat stands up to this bold spice mix and makes it a perfect accompaniment to the first soups of the season, or an intense slice of pizza.", ingredients: "Brutally hot peppers, white vinegar, garlic, salt, ajwain seed, amchoor, hing powder (rice flour, gum arabic, asafoetida, turmeric), ginger extract", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/burnafter.jpg?v=1628209938&width=680")
sauce33.photo.attach(io: file, filename: "Burn_image", content_type: "image/png")

sauce34 = Product.create!(name: "Scorpion Hot Sauce", manufacturer: "Heartbeat Hot Sauce", price: 12, description: "The good folks at Heartbeat Hot Sauce have brought the heat for Hot Ones Season 13! Their hottest hot sauce yet, this new recipe features Trinidad Scorpion Peppers to get your blood pumping! Even with a unique combination of ingredients, including beets, red bell peppers and chipotles in adobo, this sauce still has the well-balanced versatility you’ve come to expect from the Heartbeat team. With its hot but not too-hot spice level and nuanced flavor, this sauce makes just about any food sing: eggs, pizza, tacos and more. Your new go-to!", ingredients: "Vinegar, red peppers, habaneros, beets, onions, garlic, Trinidad Scorpion Peppers, Chipotles in adobo (red chipotle pepper, water, vinegar, sugar, salt, tomato paste, smoke essence, onion, garlic), salt, lemon juice, canola oil, spices", bottle_size: "6oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/heartbeat1.jpg?v=1628204324&width=680")
sauce34.photo.attach(io: file, filename: "Scorpion_image", content_type: "image/png")

sauce35 = Product.create!(name: "Reaper Hot Sauce", manufacturer: "SeaFire Gourmet", price: 12, description: "This hot but not too-hot Carolina Reaper sauce gives us big barbecue vibes with smoky chipotles balanced by two different types of vinegar, aromatic garlic and a honey & brown sugar combo for sweetness. Sprinkled with a few of Smokin’ Ed’s Carolina Reaper peppers for building heat, this is your next go-to cook out sauce. Try it on ribs, brisket, grilled portobellos and more!", ingredients: "White wine vinegar, Carolina Reaper peppers, Chipotle peppers, balsamic vinegar, shallots, garlic, honey, brown sugar, Mediterranean sea salt, vitamin C", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/seafire.jpg?v=1628213317&width=680")
sauce35.photo.attach(io: file, filename: "Reaper_image", content_type: "image/png")

sauce36 = Product.create!(name: "Spicier Smoke Hot Sauce", manufacturer: "Shaquanda's", price: 10, description: "Everyone’s favorite saucy mama is back and she is spicing things up! A hotter version of the original pepper sauce featured in Season 9 of Hot Ones, this recipe packs a punch thanks to added habanero and has a hint of smoke from paprika powder. The heat makes way for bold Caribbean-inspired flavors: a hit of aromatic onion, punchy mustard, and the natural sweetness of the peppers. Try it with sausage, roasted cauliflower, breakfast hash and more. ", ingredients: "Onion, white vinegar, habanero, roasted red pepper, lemon juice, sugar, salt, mustard, turmeric, smoked paprika powder", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/shaqsmoke1.jpg?v=1628213738&width=680")
sauce36.photo.attach(io: file, filename: "Spiciersmokehotsauce_image", content_type: "image/png")

sauce37 = Product.create!(name: "Goat Rider Hot Sauce", manufacturer: "Angry Goat Pepper Co", price: 12, description: "The makers of everyone’s favorite hippy dippy hot sauce are back with a new sauce full of comforting flavors and a medium kick. Cayenne starts off the heat, with a slight upfront burn that makes way for notes of warm balsamic and hints of sweet Vermont maple syrup. Roasted red bell pepper and garlic balance things out on the savory side. Then the ghost pepper peeks in for a little unexpected punch! Delicious on steak, portobello burgers, grilled chicken sandwiches and more! ", ingredients: "Balsamic vinegar (wine vinegar, concentrated grape must, caramel color), cayenne pepper mash (cayenne peppers, salt), Vermont maple syrup, roasted red pepper (roasted red bell peppers, water, citric acid & salt), molasses, garlic powder, apple cider vinegar, ghost pepper mash (ghost peppers, vinegar), smoked paprika, ghost pepper powder", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/ANGRYGOAT1.jpg?v=1628200179&width=680")
sauce37.photo.attach(io: file, filename: "Goat_image", content_type: "image/png")

sauce38 = Product.create!(name: "Hot Ones Jr. The Green", manufacturer: "Hot Ones Hot Sauce", price: 10, description: "The first-ever hot sauce for kids! Inspired by young Hot Ones fans, we set out to create a sauce that lets them live the Hot Ones tradition on the foothills of Mt. Scoville. Featuring the wholesome flavors they crave, a friendly label and easy to use squeeze bottle, Hot Ones Jr. The Green is tart, sweet and has just-there heat that encourages kids to try new foods and get excited about eating! This supermild hot sauce mixes kid-friendly ingredients like green apple and banana with wholesome produce (shhh, there’s spinach in there) and subtle warmth from jalapeño. Formulated with the help of one of Sean Evans’ favorite makers, Queen Majesty, and produced by fan favorite Heartbeat Hot Sauce, you can trust that this squeeze bottle hot sauce is one of the most unique we’ve ever delivered. It’s kids’ new pal for nuggets, PB&J sandwiches, fries, pizza veggies and more. Perfect for your adventurous little eater, your fav niece/nephew, and adults who are just getting into spice. When a sauce tastes this good, trust us - it’s not just for kids!", ingredients: "Green apple, apple juice, sweet onion, lime juice, baby spinach, apple cider vinegar, jalapeño peppers, banana, kosher salt, extra virgin olive oil, fresh basil", bottle_size: "6oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/hotones-Jr-hotsauce.jpg?v=1638173985&width=680")
sauce38.photo.attach(io: file, filename: "thegreen_image", content_type: "image/png")


sauce39 = Product.create!(name: "Mezcaline", manufacturer: "Burns and McCoy", price: 12, description: "Our first hot sauce with mezcal! The smoky alcohol originating from Oaxaca lends just a subtle earthy heat to this complex hot sauce filled with espresso, cocoa, spices and cinnamon. Tomato and lime juice balance out all the toasty notes with acidity in the same way the fruity heat of orange habaneros balances out earthy dried Chocolate Bhutlah and Chocolate Ghost pepper powder. This may be the #3 sauce in Season 18’s Hot Ones lineup, but watch out for that creeping ghost pepper heat! A must have with tacos, grilled chicken, ribs, and more!  ", ingredients: "Fire roasted tomato (vine ripened tomatoes, tomato juice, salt, and citric acid), red jalapeno mash (peppers, vinegar), water, orange habanero mach (peppers, vinegar), garlic, onion, brown sugar, vinegar, mezcal, olive oil, salt, espresso, rose water, lime juice, cocoa powder, oregano, chocolate bhutlah pepper powder, chocolate ghost pepper powder, thyme, cinnamon", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/HOTONES-SEASON18-Mezcaline.jpg?v=1652725172&width=680")
sauce39.photo.attach(io: file, filename: "Mezcaline_image", content_type: "image/png")

sauce40 = Product.create!(name: "Cosmic Dumpling Hot Sauce", manufacturer: "Karma Sauce", price: 12, description: "Cosmic Dumpling gets its name from sauce maker Gene’s former career as an engineer for NASA satellites! The hot sauce lives up to its out-of-this-world name with supernova-sized, sweet and savory flavors thanks to tamari, orange juice, honey, and garlic, all getting liftoff from a healthy dose of sesame oil. Like a black hole, it pulls in everything in its path - dumplings, spring rolls, bao and more. Also makes a universally good glaze, on pork belly, salmon, tofu or more! ", ingredients: "Rice wine vinegar, red jalapeno peppers, tamari (water, soybeans, salt, alcohol), brown sugar, orange juice, garlic, tomato paste (fresh tomatoes, naturally sourced citric acid), lemon juice, honey, sesame oil, ginger, culantro, orange zest", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/cosmic-dumpling.jpg?v=1622751529&width=680")
sauce40.photo.attach(io: file, filename: "CosmicDumpling_image", content_type: "image/png")

sauce41 = Product.create!(name: "Keith's Taco Sauce", manufacturer: "Keith's", price: 12, description: "He’s eaten the menu at Taco Bell. He wrote the song on grocery store tacos. After changing the hot sauce game with his Chicken and Burger sauces, Keith Habersberger of Try Guys fame is back to give new life to taco night with Keith’s Taco Sauce! This not-too-hot sauce features zippy jalapenos and serranos blended with citrus and earthy aromatics. Cinnamon and raisins, a nod to the centuries old tradition of adding dried fruit to savory dishes, sweeten the deal. Keith’s Taco Sauce adds unexpected complexity and flavor to your favorite taco fixings, plus picadillos, pork chops and more! ", ingredients: "Distilled vinegar, jalapeños, serranos, lime juice, garlic scapes, smoked onion, grapefruit juice, orange juice, garlic, salt, corn, raisins, cumin, smoked paprika, cinnamon, coriander, allspice", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Keith_staco.jpg?v=1620164161&width=680")
sauce41.photo.attach(io: file, filename: "KeithTaco_image", content_type: "image/png")

sauce42 = Product.create!(name: "Keith's Burger Sauce", manufacturer: "Keith's", price: 12, description: "Keith Habersberger (of Try Guys fame) rocked the world of hot sauce with the launch of Keith’s Chicken Sauce in 2019. Now he’s back with a brand new hot sauce guaranteed to light your fire (your mild, tasty fire): Keith’s Burger Sauce! Featuring a flavor-packed blend of smoked serrano and jalapeno peppers, this sauce’s mild heat lights up everything from burgers to veggies and beyond. A combination of maple syrup and figs bring sweet and warming notes, while mustard seed and sun dried tomatoes nod at traditional burger flavors, only with way more depth of deliciousness. Whether you like yours rare, with cheese, smashed or vegetarian, burgers are brought to the next level with Keith’s Burger Sauce. Also FREAKING AMAZING as a salad dressing or steak sauce!", ingredients: "Distilled vinegar, smoked serranos, smoked jalapenos, smoked onions, smoked onion juice, maple syrup, mustard seeds, figs (figs, rice flour), salt, sun dried tomatoes, horseradish, garlic, garlic scapes, black pepper", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/keithburger1productpage.jpg?v=1628210109&width=680")
sauce42.photo.attach(io: file, filename: "KeithBurger_image", content_type: "image/png")

sauce43 = Product.create!(name: "Scorpion Disco Hot Sauce", manufacturer: "Karma Sauce", price: 12, description: "Gene from Karma Sauce Co is bringing the boogie with this scorching hot Scorpion pepper hot sauce. One of the hottest on earth, Trinidad Scorpion peppers lend this sauce their signature floral flavor and sharp heat before being backed up by ghost peppers, chocolate habaneros and 7 Pot Primo peppers. These chiles are going full Saturday Night Fever, and your taste buds are their dance floor! Excellent on fried chicken dishes (think the world’s best hot cherry sauce), jerk marinades or mixed into a rich yogurt for a flaming hot dipping sauce.", ingredients: "Peppers (Trinidad Scorpion, ghost, chocolate habanero, 7 Pot Primo), apple cider vinegar, cane sugar, fresh lime juice, salt, garlic, spices", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/scorpionDisco.jpg?v=1628210074&width=680")
sauce43.photo.attach(io: file, filename: "Scorpiondisco_image", content_type: "image/png")

sauce44 = Product.create!(name: "XXX Ghost Pepper Mash", manufacturer: "Dawson's Hot Sauce", price: 24, description: "Looking to ruin your afternoon in the most delicious way possible? Then this is the sauce for you! With roughly 36 ghost peppers (bhut jolokia) in each bottle of sauce, the Dawson's XXX packs a wallop that sits with you for a while. But thankfully the flavor matches the heat bite for bite.As the heat slowly builds you have time to savor the pepper sweetness and rich, mouth coating flavor of ghost. Try it on a sandwich or a slice of pizza, or mixed into a stir fry or stew, or to add a much needed kick to some hummus.", ingredients: "Vinegar, dried ghost pepper, garlic, salt", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/1047102521353.jpg?v=1628202950&width=680")
sauce44.photo.attach(io: file, filename: "xxxghost_image", content_type: "image/png")

sauce45 = Product.create!(name: "The Original Goat (The OG) Hot Sauce", manufacturer: "Ginger Goat", price: 12, description: "Ginger hot sauce! Need we say more? Ginger Goat lives up to its name with a billy goat kick of zippy, throat-clearing ginger root that is perfectly balanced with bright, tropical smoked pineapple. Slow building heat from just a handful of Carolina Reapers in each batch add a tingle at the back of the throat. If ginger health shots were a delicious sauce, they’d taste like this. Marinade chicken, toss it on salad, top healthy grain bowls and more - the possibilities are endless with this one! ", ingredients: "Apple cider vinegar, smoked pineapple, ginger, pineapple, carrot, lime juice concentrate, Carolina Reaper pepper, smoked onion, smoked garlic (olive oil, garlic), sugars (brown sugar), kosher salt, cilantro, turmeric", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Gingergoat.jpg?v=1622751538&width=680")
sauce45.photo.attach(io: file, filename: "Originalgoat_image", content_type: "image/png")

sauce46 = Product.create!(name: "Cocoa Ghost Hot Sauce", manufacturer: "Queen Majesty", price: 14, description: "Sean Evans has shouted out Erica of Queen Majesty as one of his all-time favorite hot sauce makers, so you know we had to bring her newly released sauce in for Hot Ones Season 17! Cocoa Ghost brings depth of flavor with bitter cocoa powder, sweet pineapple, gingery warmth and a quick hit of ghost pepper heat that flares up into the nostrils and lingers. This just-right, medium-hot hot sauce will warm you up from the inside out on rib eye or as a topping for all types of taco. The mix of cocoa and Mexican pasilla negro chilis also lends itself beautiful to grilled pork and mushrooms!", ingredients: "White vinegar, pineapple juice, sweet onions, habanero peppers, ghost peppers, ginger root, garlic, pineapple, dried plums, pasilla negro, chipotle, black cocoa, extra virgin olive oil, salt & spices", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/QUEENMAJESTYCOCOAGHOST.jpg?v=1641410535&width=680")
sauce46.photo.attach(io: file, filename: "Cocoaghost_image", content_type: "image/png")

sauce47 = Product.create!(name: "The Phoenix Hot Sauce", manufacturer: "Angry Goat Pepper Co", price: 12, description: "We always say if you’re not having fun with hot sauce, you’re not doing it right! Hot sauce maker Angry Goat gets it right with their whimsical labels and ingredient choices you may remember from Hot Ones Seasons 8 and 13. Phoenix marks their return to the lineup with another one-of-a-kind recipe, this time with cantaloupe and ginger. Yes, you read that right… melon on chicken wings. It may seem strange at first, but to all the skeptics out there we say, “Don’t knock it ‘til you’ve tried it!” This sauce is sweet-tart heat and downright addicting on salad, sandwiches or even with a charcuterie board.", ingredients: "Cantaloupe melon, distilled white vinegar, lime juice, yellow Scotch Bonnet mash (peppers, vinegar), orange blossom honey, peaches, sweet onions, olive oil, ginger root, datil pepper powder, salt, garlic powder", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/ANGRYGOATTHEPHOENIX_b27a4a5e-993c-4d58-8eda-097075368009.jpg?v=1641842884&width=680")
sauce47.photo.attach(io: file, filename: "Pheonix_image", content_type: "image/png")

sauce48 = Product.create!(name: "The Seventh Reaper Hot Sauce", manufacturer: "Sauce Leopard", price: 12, description: "A newcomer to the Hot Ones hot sauce fam and the Season 18 lineup! Shaun Goodwin of Sauce Leopard dreamed up this hot sauce as an anniversary gift for a friend, basing the flavors on his Argentinian roots. While we’d seen spicy versions of the popular green chimichurri, we had yet to see a take on an Argentinian red chimichurri transformed into a hot sauce - until now! With savory notes of roasted red peppers, tomato and garlicky goodness, this is a can’t-miss sauce for home chefs. Try it on roasted potatoes, fluffy omelets and steak. Oh, and did we mention it contains a couple Carolina Reaper peppers? Just two of these are enough to give this hot sauce just-over medium heat.", ingredients: "Distilled white vinegar, tomato puree, grapeseed oil, jalapenos, red wine vinegar, water, organic vegetable stock (water, vegetable puree (celery, carrot), vegetable juice concentrates (celery, onion, carrot), salt, tomato paste, red bell pepper, honey, parsley, garlic, white onion, green onion, lemon juice, cilantro, Carolina Reapers, salt, oregano, spices", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/HOTONES-SEASON18seventh.jpg?v=1652728995&width=680")
sauce48.photo.attach(io: file, filename: "Seventhreaper_image", content_type: "image/png")

sauce49 = Product.create!(name: "Devil’s Blend Roasted Reaper Hot Sauce", manufacturer: "Hellfire Hot", price: 12, description: "Hellfire has been known for their horror-themed labels and super spicy recipes that lurk in the dark corners of more than one Hot Ones lineup. This time they’re back with toned down heat but dialed up flavor thanks to fire roasted jalapenos, tomatillos, granny smith apples, and a healthy portion of scallion. Gracing the number 4 seat in the Season 14 lineup, Devil’s Blend does add a devilish touch of roasted Reaper pepper heat but with notes of smoke, tartness and aromatic herbs. This award-winning recipe is sure to get celebrity guest and fans alike to sit up and take notice.", ingredients: "Fire roasted jalapeño pepper mash (jalapeno peppers and vinegar), distilled vinegar, tomatillos (tomatillos, water, citric acid and vinegar), Granny Smith apples, roasted garlic (garlic and water), scallion puree (scallions, salt), cilantro, green Carolina Reaper pepper mash (Carolina Reaper peppers and vinegar), sea salt, cumin, lime juice from concentrate", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/devilsblend1.jpg?v=1616536985&width=680")
sauce49.photo.attach(io: file, filename: "Devilsblend_image", content_type: "image/png")

sauce50 = Product.create!(name: "Tikk-Hot Masala Hot Sauce", manufacturer: "High Desert", price: 12, description: "An aromatic spice blend, this hot sauce brings creamy coconut milk and tangy tomatoes blended with a medium-hot mix of Anaheim, ghost and Carolina Reaper peppers - basically all the flavors of your favorite Tikka Masala. A little agave nectar adds sweetness, with fresh garlic and toasted cumin bringing the savory. A newcomer to the Hot Ones hot sauce family, this medium-hot sauce turns up the volume of curries and soups, as well as hearty meats like lamb. ", ingredients: "Distilled vinegar, roma tomato, unsweetened coconut milk, ghost pepper, anaheim chili, onion, water, agave nectar, tomato paste, carolina reaper pepper, apple cider vinegar, kosher salt, fresh ginger, fresh garlic, toasted peppercorns, toasted cumin seed, garam masala, tumeric, coriander", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/tikk-hotmasala.jpg?v=1622751545&width=680")
sauce50.photo.attach(io: file, filename: "Tikka_image", content_type: "image/png")

sauce51 = Product.create!(name: "Hot Pepper Sauce", manufacturer: "Dirty Dick's Hot Sauce", price: 12, description: "Dirty Dick’s Hot Sauce blends habanero peppers with tropical fruits for a sweet and spicy sauce. Let the sweetness of bananas, raisins, and pineapples linger on your palate and wait for the heat to kick in. Great for beef stir-fry, chicken wraps, and as a stand-alone dipping sauce for the daring.", ingredients: "Habanero peppers, mangoes, pineapple, vinegar, bananas, brown sugar, raisins, onions, garlic, salt, spices", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/368548413449.jpg?v=1628203418&width=680")
sauce51.photo.attach(io: file, filename: "Hotpepper_image", content_type: "image/png")

sauce52 = Product.create!(name: "Red Habanero & Black Coffee Hot Sauce", manufacturer: "Queen Majesty", price: 12, description: "Queen Majesty debuted this flavor at our tasting room last summer to rave reviews. Cold-brewing coffee with vinegar instead of water to use with her habanero mash geniusly infuses this sauce with the earthy flavors of coffee without overpowering. Pairs perfectly with roast potatoes in the morning and pulled pork. This is her hottest sauce to date but keep your eyes peeled for more...", ingredients: "Fair trade coffee-infused white vinegar, onions, red bell peppers, red habanero peppers, apple cider vinegar w/ mother, balsamic vinegar, garlic, ginger root, olive oil, salt, and spices", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/371955269641.jpg?v=1628213101&width=680")
sauce52.photo.attach(io: file, filename: "Redhabanero_image", content_type: "image/png")

sauce53 = Product.create!(name: "Son of Zombie Hot Sauce", manufacturer: "Torchbearer Sauces", price: 8, description: "Where Zombie Apocalypse headed straight for the pepper content, this offspring adds in complex flavors from honey, onions, molasses and oregano for a kick-ass wing sauce. The sweetness will caramelize on wings or anything on the grill, with just enough heat to leave you wanting more. Don't be shy with this one.", ingredients: "Honey, apple cider vinegar, tomato paste, water, garlic, ghost pepper, habanero, distilled white vinegar, brown sugar, canola oil, lemon juice, molasses, mandarin orange, diced tomato, carrots, mustard powder, turmeric, garlic powder, onions, salt, crushed red pepper, white sugar, chili powder, oregano, black pepper", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/3565619445876.jpg?v=1628214847&width=680")
sauce53.photo.attach(io: file, filename: "Sonofzombie_image", content_type: "image/png")

sauce54 = Product.create!(name: "Blueberry Habanero Hot Sauce", manufacturer: "Heartbeat Hot Sauce", price: 12, description: "Sweet summer blueberries round out the fresh taste of bell pepper, yielding a sauce with lots of versatility. Savory onions and a blueberry ale keep the flavors evolving as it moves over your taste buds. Have fun with this one! I love it with roast turkey, or squeeze some onto a peanut butter sandwich for something new.", ingredients: "Blueberries, bell pepper, onion, distilled vinegar, sugar, red habanero, garlic, lime juice, kosher salt, canola oil, blueberry ale (water, malted barley, hops, blueberries)", bottle_size: "6oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/4624640016482.jpg?v=1628204087&width=680")
sauce54.photo.attach(io: file, filename: "Blueberry_image", content_type: "image/png")

sauce55 = Product.create!(name: "Revolutionary Hot Sauce", manufacturer: "Hot Heads", price: 12, description: "Newcomer to the black tablecloth, Hot Heads is spicing up the Hot Ones Season 16 lineup early with our first ever #5 spot sauce featuring Trinidad Scorpion peppers. Don’t worry - they mix just a few of those vicious peppers in with other powerhouse flavors like fire roasted bell pepper, savory olive oil, pink himalayan sea salt and pink peppercorn to hit every taste bud on the tongue. Try it with everything from pizza to pasta or even lasagna (yes lasagna). Would also be killer mixed into butter for popcorn!  ", ingredients: "Fire roasted bell pepper, apple cider vinegar, sweet onion, Trinidad Scorpion pepper, red bell pepper, tomato paste, garlic, olive oil, sugar, blue agave, pink himalayan sea salt, sichuan & pink peppercorn, lime juice", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/hotones-hotheads-hotsauce.jpg?v=1631223076&width=680")
sauce55.photo.attach(io: file, filename: "Revolutionaryhotsauce_image", content_type: "image/png")

sauce56 = Product.create!(name: "Chrome", manufacturer: "Lucky Dog Hot Sauce", price: 12, description: "Habaneros have a cult following for good reason: their fruity taste and challenging but not brutal heat is a pillar of the pepper world. Lucky Dog’s latest hot sauce, a HEATONIST exclusive, plays up the habanero’s fruit-forward flavor with mandarin oranges, apple and a touch of honey. Featuring the Red Savina Habanero, a larger, spicier cultivar, this sauce’s medium heat makes it highly accessible for pepperheads and attainable for those still training up their heat tolerance. Try it with pork chops, roasted butternut squash or brussels sprouts.", ingredients: "Mandarin oranges in juice (Mandarin oranges, water, sugar, citric acid), Drake’s 1500 Pale Ale (gluten free), cider vinegar, carrots, Red Savina Habanero mash (habanero peppers, salt, acetic acid), onions, apple sauce, garlic, dried garlic, sea salt, honey, lime juice, spices, horseradish powder, agave syrup, mustard flour", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Luckydog-chrome.jpg?v=1636398022&width=680")
sauce56.photo.attach(io: file, filename: "Chrome_image", content_type: "image/png")

sauce57 = Product.create!(name: "Original Hot Sauce", manufacturer: "DJABLO Sauce", price: 12, description: "This Filipino sauce hailing from NYC first was an instant hit at our Brooklyn tasting room! It’s bold and bright with big doses of zippy ginger and savory garlic that hit you right out of the gate. It also has a unique blend of Italian chiles, Jamaican round, and teardrop peppers that give this sauce its signature medium heat. It packs a flavor wallop when added to pancit, quinoa bowls, stir fries, sandwiches and more. ", ingredients: "Peppers, ginger, garlic, vinegar, olive oil, salt, chia seed, spirulina, and agave nectar", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/djablo-hotsauce1.jpg?v=1616450233&width=680")
sauce57.photo.attach(io: file, filename: "OriginalHotSauce_image", content_type: "image/png")

sauce58 = Product.create!(name: "Cheeba Gold Hot Sauce", manufacturer: "High River Sauces", price: 12, description: "High River Sauces Cheeba Gold is their newest offering, blending Scotch Bonnet and Fatalii peppers with peaches, lemon and a touch of mustard for real island vibes. This sauce is perfect for chicken & rice, on grilled fish, or added right into a salsa. ", ingredients: "Peaches, yellow scotch bonnet pepper, onions, distilled vinegar, fatalli peppers, water, brown sugar, mustard, garlic, lemon juice, curry powder, salt, cumin, black pepper, cilantro, family secret spices.", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/400119332873.jpg?v=1628206246&width=680")
sauce58.photo.attach(io: file, filename: "Cheeba_image", content_type: "image/png")

sauce59 = Product.create!(name: "Year of the Dog", manufacturer: "Lucky Dog Hot Sauce", price: 12, description: "Lucky Dog has been making hot sauce in the San Francisco Bay area for seven years now and they just keep getting better. This Thai chile pineapple sauce is arguably their best yet. The genius lies in pairing a super sweet fruit like pineapple with the earthy flavors of toasted onion and sesame. Balance that with sinus tickling mustard and cheek puckering lime, and what you get is a savory-sweet flavor explosion that goes great on everything from rice dishes to stir fry to simple grilled chicken.", ingredients: "Pineapple, rice vinegar, onion, roasted garlic, honey, dried red chilies, toasted onion, sea salt, agave, lime juice, ginger, dried garlic, mustard flour, toasted sesame seeds", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/doggo.jpg?v=1628210776&width=680")
sauce59.photo.attach(io: file, filename: "yearofthedog_image", content_type: "image/png")

sauce60 = Product.create!(name: "Hot Ones Jr. The Yellow", manufacturer: "Hot Ones Hot Sauce", price: 12, description: "Meet the world’s most playful hot sauce! After the love we received for Hot Ones Jr. The Green we had to make it a slightly-spicier best friend. The Yellow is a juicy mix of tropical pineapple, mango and just a few Scotch Bonnet peppers. To all the parents who reached out and left reviews that their small spice lover enjoyed The Green but could handle more heat - heard! Made with wholesome fruits and vegetables with no added sugar, The Yellow is packed with flavors kids love and parents can feel good about. Great for nieces, nephews, mini-mes and also adults who are new to spice. Try it on sandwiches, rotisserie chicken, quesadillas, fish sticks and make snack time as fun as summer vacation! ", ingredients: "Yellow bell peppers, pineapple, mango, onion, distilled vinegar, lime juice, Scotch Bonnet peppers, salt, olive oil, garlic, turmeric, ginger", bottle_size: "6oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/hotones-theyellow-hotsauce.jpg?v=1650308626&width=680")
sauce60.photo.attach(io: file, filename: "yellowone_image", content_type: "image/png")

sauce61 = Product.create!(name: "Dill Pickle Serrano Hot Sauce", manufacturer: "Heartbeat Hot Sauce", price: 12, description: "Pickle hot sauces are having a moment, and this new recipe from the Heartbeat crew is kind of a big dill. A funky cross between a dill-brined cuke and pickled jalapeno, it’s sour, juicy, garlicky with a herby hit of dill and a welcome hint of serrano heat. Its mild spice level makes it enjoyable by all, and a great starter sauce. Try it on anything that needs pickley acid flavor: burgers and dogs, sandwiches, deviled eggs, even mac & cheese, or a classic Canadian Bloody Caesar (or Bloody Mary, if you prefer)! ", ingredients: "Vinegar, onion, jalapeno, cucumber, serrano pepper, salt, garlic, dill, canola oil, spices, mustard seed", bottle_size: "6oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/heartbeat-dill-pickle-saucecopy.jpg?v=1627335268&width=680")
sauce61.photo.attach(io: file, filename: "Dillpickle_image", content_type: "image/png")


sauce62 = Product.create!(name: "Heartbeat Hot Sauce Set", manufacturer: "Heartbeat Hot Sauce", price: 66, description: "Heartbeat Hot Sauce out of Thunder Bay, Ontario, has been taking names and winning hearts (pun intended) for their craveable and fun-filled hot sauces ever since their original Habanero Hot Sauce was featured on Season 6 of Hot Ones, gaining a cult following for perfectly balanced and versatile flavor. Makers Al and Nancy put an incredible amount of love and care into each bottle, so it’s no wonder that their sauces are some of the most popular out there! This pack features their greatest hits (in heat order): mild and tangy Jalapeno, sweet-tart Blueberry Habanero, dill-y Dill Pickle Serrano, goldilocks-medium Habanero, tropical Pineapple Habanero and spicy-and-savory Scorpion pepper. With a range of bold ingredients and heat levels (2/10 through 6/10), it’s the perfect flavor-packed pack for hot sauce aficionados and toe dippers alike. This vibrant, rainbow-colored assortment also makes a gorgeous gift!

Featuring:

- Heartbeat logo sticker

- Metallic HEATONIST sticker

- 6 signature Heartbeat hot sauces, including

Heartbeat Hot Sauce | Jalapeno
Ingredients: Jalapeno, onion, distilled vinegar, serrano pepper, sugar, lime juice, garlic, canola oil, cilantro.
Size: 6 FL oz

Heartbeat Hot Sauce | Blueberry Habanero
Ingredients: Blueberries, bell pepper, onion, distilled vinegar, sugar, red habanero, garlic, lime juice, kosher salt, canola oil, blueberry ale (water, malted barley, hops, blueberries)
Size: 6 FL oz
CONTAINS A SMALL AMOUNT OF GLUTEN

Heartbeat Hot Sauce | Dill Pickle Serrano
Ingredients: Vinegar, onion, jalapeno, cucumber, serrano pepper, salt, garlic, dill, canola oil, spices, mustard seed
Size: 6 FL oz

Heartbeat Hot Sauce | Habanero
Ingredients: Bell pepper, onion, white vinegar, sugar, red habanero, garlic, lime juice, kosher salt, canola oil
Size: 6 FL oz

Heartbeat Hot Sauce | Pineapple Habanero
Ingredients: Pineapple, yellow peppers, onion, distilled vinegar, habaneros, sugar, lime juice, kosher salt, garlic, canola oil, ale (water, hops, malted barley, yeast)
Size: 6 FL OZ
CONTAINS A SMALL AMOUNT OF GLUTEN

Heartbeat Hot Sauce | Scorpion
Ingredients: Vinegar, red peppers, habaneros, beets, onions, garlic, Trinidad Scorpion Peppers, Chipotles in adobo (red chipotle pepper, water, vinegar, sugar, salt, tomato paste, smoke essence, onion, garlic), salt, lemon juice, canola oil, spices
Size: 6 FL oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/heartbeat6pack.jpg?v=1643403975&width=680")
sauce62.photo.attach(io: file, filename: "HeartbeatHotSauceSet_image", content_type: "image/png")

sauce63 = Product.create!(name: "Mellow Habanero Hot Sauce Trio", manufacturer: "Mellow Habanero", price: 80, description: "The best Japanese hot sauces! Taku “Habanero Man” Kondo of ta-nm farm in Hyogo, Japan grows just enough organic habanero peppers each year to make one batch of his highly creative craft hot sauces. His golden habaneros are special enough on their own, having a distinctly bright, citrus-forward flavor. But once Taku blends them with high quality, all-natural ingredients, they sing. Featuring a range of flavor profiles - vibrant with fruit, savory and balanced, smoky with umami - and heat levels, these three sauces are must haves for true hot sauce lovers. The uniquely shaped bottles and gorgeous labels make this hot sauce gift set a homerun holiday present. Patrons of our Williamsburg, Brooklyn shop will know to stock up quickly - once this limited edition collection sells out, it's gone until the next year's harvest!

  Smoky with Chipotle
  The highest quality smoked jalapenos (aka chipotle) and habaneros are the true stars of this umami-packed sauce. Mild heat means it’s ready to be added to tacos, steak and more.
  Ingredients: Rice vinegar, tomato, onions, balsamic vinegar, smoked jalapeno, smoked habanero, sea salt
  Size: 5 FL OZ

  Mellow Habanero
  Sometimes, the simplest ingredients make the most luxurious flavors. Taku’s original recipe has savory tomato and onion balanced by sweet mango. Use liberally on everything (we mean it).
  Ingredients: Tomato, onion, rice vinegar, habanero, mango, garlic, sea salt
  Size: 5 FL OZ

  Yuzu Heaven
  This HEATONIST exclusive features bright, citrusy yuzu to awaken the senses, leading into powerful heat from the habaneros. Try dipping sushi or use it as a marinade for chicken or pork.
  Ingredients: Organic habanero, rice vinegar, yuzu juice, yuzu peel, organic mango, sea salt
  Size: 5 FL OZ")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/MellowHabaneroTrio-2.jpg?v=1637719154&width=680")
sauce63.photo.attach(io: file, filename: "MellowHabaneroSet_image", content_type: "image/png")

sauce64 = Product.create!(name: "Hot Sauce Trio: Chicken, Burger & Taco Sauces", manufacturer: "Keith's", price: 33, description: "When Try Guys’ Keith Habersberger first approached us about creating a hot sauce based on his love of fried chicken, buffalo and ranch, we knew he was on to something. Fans couldn’t get enough of Keith’s Chicken Sauce for its tangy flavor and not-too-hot spice level. But that was just the opening chapter of Keith’s hot sauce story. Introducing the ultimate tasty trio of Keith’s Hot Sauces: Keith’s Burger Sauce makes any burger a Habersburger with its sweet mustard base, while the newest addition, Keith’s Taco Sauce, takes taco night to new heights with jalapenos, raisins and citrus. This pack is full of versatile flavors that are as delicious on their namesakes as they are on other stuff, meaning Keith has you covered for all your favorite meals. And the not-too-hot heat level means they’re perfect for spice novices and flavor hounds alike.

  Keith’s Chicken Sauce
  Also great on: Pizza, mac n cheese, salads
  Ingredients: Organic distilled vinegar, serrano peppers, maple wood smoked onions, pure Vermont maple syrup, garlic scapes, roasted red peppers ( red peppers, water, salt, citric acid) sunflower oil, sour cream powder ( sour cream powder cream cultures and lactic acid, cultured nonfat milk solids, citric acid) salt, dill, parsley, chives, black pepper
  CONTAINS MILK
  Size: 5 FL oz

  Keith’s Burger Sauce
  Also great on: Meat loaf, sandwiches, french fries
  Ingredients: Distilled vinegar, smoked serranos, smoked jalapenos, smoked onions, smoked onion juice, maple syrup, mustard seeds, figs (figs, rice flour), salt, sun dried tomatoes, horseradish, garlic, garlic scapes, black pepper
  Size: 5 FL oz

  Keith’s Taco Sauce
  Also great on: Pork chops, burritos, eggs
  Ingredients: Distilled vinegar, jalapeños, serranos, lime juice, garlic scapes, smoked onion, grapefruit juice, orange juice, garlic, salt, corn, raisins, cumin, smoked paprika, cinnamon, coriander, allspice

  Size: 5 FL oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/KEITH_STRIO3.jpg?v=1622657425&width=680")
sauce64.photo.attach(io: file, filename: "KeithsSet_image", content_type: "image/png")

sauce65 = Product.create!(name: "Señor Lechuga Hot Sauce Trio", manufacturer: "Señor Lechuga", price: 66, description: "The ultimate hot sauce gift pack for foodie hot sauce lovers! The hot sauces in this HEATONIST-exclusive set feature opulent, hard-to-find ingredients, combining luxurious flavors with premium peppers to create a great gift for gourmands and pepperheads alike. .507 features Cáscara, the husk of the coffee fruit, from award-winning Panamanian coffee roaster Café Unido. The floral, pomegranate notes of ultra-rare Geisha coffee ($1,300/lb!) are complemented with tropical passion fruit in .098, while .5326 includes not just white truffle oil, but also real winter Perigord black truffles, giving the hot sauce an irreplaceable umami quality that rounds out this pièce de résistance of a sauce pack. With some of the most unique flavor combinations we’ve ever seen, this is the must-have hot sauce gift set for epicures or anyone who enjoys a fine meal.

.507 Habanero Coffee Cáscara
Made with renowned chef Mario Castrellon featuring some of the world’s best coffee and Cáscara from Panama’s Café Unido. Fruity habaneros complement the sweet herbal undertones of the Cáscara and add just-right heat. A delicious hot sauce on everything from morning eggs to a cut of Wagyu.
Ingredients: Bell peppers, vinegar, habanero peppers, red onion, garlic, himalayan sea salt, Café Unido Coffee, Café Unido Cáscara, paprika
Size: 5 FL OZ

.098 Habanero Geisha Coffee Passion Fruit
The “98” in .098 comes from Café Unido’s 98/100 Coffee Review score for its premium Panama Geisha coffee. The coffee’s notes of pomegranate, dark chocolate and violet are accentuated by tartness from passion fruit and blueberry. Pair with ricotta toast or use as a glaze for ribs.
Ingredients: White vinegar, blueberries, habanero, passion fruit, red onion, garlic, salt, Café Unido Geisha Coffee
Size: 5 FL OZ

.5326 Heirloom Tomatoes Winter Truffle Reapers
Made in collaboration with precision knife crafter Half Face Blades, .5326 sauce uses 100% real black truffles for one-of-a-kind umami flavor. This is as luxurious as it gets, so treat yourself to it with a fine pasta, pâté, or on a show stopping mushroom risotto.
Ingredients: Heirloom tomatoes, habanero peppers, white wine vinegar, white truffle olive oil (organic California extra virgin olive oil, organic white truffle infusion [tuber magnatum]), red onion, cremini mushrooms, sherry vinegar, garlic, salt, winter black Perigord truffles [tuber melanosporum], dried Carolina Reaper peppers
Size: 5 FL OZ")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Senorlechugapack.jpg?v=1637718702&width=680")
sauce65.photo.attach(io: file, filename: "SeniorLechuga_image", content_type: "image/png")

LOCATIONS = ["North America", "South America", "South East Asia", "Middle East", "Africa", "Europe"]

Product.all.each do |product|
  product.location = LOCATIONS.sample.gsub(/\s+/, "")
  puts "added #{product.location} to #{product.name}"
  product.save!
end

puts "DONE"
