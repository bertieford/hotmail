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

sauce18 = Product.create!(name: "Habanero Hot Sauce", description: "Portland's famous table sauce, Secret Aardvark Habanero's unique Caribbean / Tex-Mex hybrid is made with flavorful Habanero peppers and roasted tomatoes. You'll want to use it on everything, so be careful if you only get one bottle.", manufacturer: "Secret Aardvark Trading Co", price: 12.00, ingredients: "White wine vinegar, roasted tomatoes, habanero peppers, onion, carrot, sugar, prepared mustard, water, kosher salt, cornstarch, herbs & spices", bottle_size: "8oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/460749635593.jpg?v=1628213474&width=680")
sauce18.photo.attach(io: file, filename: "HabaneroHotSuace_image", content_type: "image/png")

sauce19 = Product.create!(name: "Pineapple & Habanero Hot Sauce", manufacturer: "Bravado Spice Co", price: 10.00, description: "Fresh pineapple dominates this sauce, shining through the habanero heat. Yellow bell pepper lends only a touch of sweetness. A great option for people who like fruit sauces but not overly sweet ones. Goes well with rice & beans, fish dishes, or mixed into a salad", ingredients: "Pineapple, white wine vinegar, yellow bell peppers, habanero, garlic, salt", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/880526524425.jpg?v=1628200986&width=680")
sauce19.photo.attach(io: file, filename: "PineappleHabaneroHotSauce_image", content_type: "image/png")

sauce20 = Product.create!(name: "Zombie Apocalypse Hot Sauce", manufacturer: "Torchbearer Sauces", price: 10.00, description: "The Zombie Apocalypse Hot Sauce lives up to its name, combining Ghost Peppers and Habaneros with a mix of spices, vegetables, and vinegar to create a slow burning blow torch. Some people will feel the heat right away, but others can take a few minutes for the full impact to set in. The heat can last up to 20 minutes, creating a perfect match between very high heat and amazing flavor. Try it on all your favorite foods - wings, chili, soups, steak or even a sandwich in need of a major kick.", ingredients: "Bhut jolokia peppers, habanero peppers, carrot, mandarin orange, tomatoes, distilled white vinegar, vegetable oil, garlic, sugar, spices", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/374377971721.jpg?v=1628214918&width=680")
sauce20.photo.attach(io: file, filename: "ZombieApocolypse_image", content_type: "image/png")

sauce21 = Product.create!(name: "Original Hot Sauce", manufacturer: "Howler Monkey", price: 8.00, description: "Howler Monkey Original is a nod to the traditional Panamanian-style hot sauce with a tangy vinegar base and scotch bonnet peppers. Turmeric and garlic are stand-out flavors, making this every-day use sauce truly original. Try it on everything, from eggs to chicken to salads.", ingredients: "Distilled vinegar, red scotch bonnet peppers, garlic, onions, mustard (distilled vinegar, # 1 mustard seed, salt, turmeric, spices), cumin, black pepper, turmeric ", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/2522930348148.jpg?v=1628209450&width=680")
sauce21.photo.attach(io: file, filename: "HowlerMonkey_image", content_type: "image/png")

sauce22 = Product.create!(name: "Guajillo & Red Jalapeno Hot Sauce", manufacturer: "Humble House", price: 12.00, description: "This third sauce from the San Antonio kitchen of Humble House is a well balanced red jalapeño and fresh garlic masterpiece. The guajillo peppers add a nice sweet touch to this south of the border Sriracha, landing at a solid mild heat level.", ingredients: "Aged chile paste (red jalapeños, fresh garlic, vinegar, guajillo peppers, kosher salt) vinegar, pickled red bell pepper, cane sugar", bottle_size: "9.5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/838886555657.jpg?v=1628209554&width=680")
sauce22.photo.attach(io: file, filename: "Guajillo_image", content_type: "image/png")

sauce23 = Product.create!(name: "Ancho & Morita Hot Sauce", manufacturer: "Humble House", price: 12.00, description: "A new crowd favorite here at hot sauce HQ, the Humble House Ancho is a sauce that begs to be squeezed on everything. It's rich and smoky from the mild Morita pepper (a smoked red jalapeño) and slightly sweet from tamarind. This is a BBQ/hot sauce hybrid that works great on rice and beans and grilled meats. Or eggs. Or chicken. Or anything!", ingredients: "Aged tamarind chili paste (raisins, tamarind concentrate, gluten-free soy sauce, balsamic vinegar, Morita chile, ancho chile, kosher salt), vinegar, cane sugar, fresh garlic", bottle_size: "10.4oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/394375069705.jpg?v=1628209506&width=680")
sauce23.photo.attach(io: file, filename: "Ancho_image", content_type: "image/png")

sauce24 = Product.create!(name: "Hippy Dippy Green Hot Sauce", manufacturer: "Angry Goat Pepper Co", price: 8.00, description: "Angry Goat Pepper Co's Hippy Dippy Green delivers a creamy texture thanks to the mix of avocado and olive oil. Kiwi fruit brings just enough sweetness to balance the jalapeños and serranos, while lime juice brightens up the roasted tomatillos. Great for tacos, salads, sandwiches, and especially chicken!", ingredients: " Fire roasted jalapeño peppers, fire roasted serrano peppers, water, lime juice, fire roasted tomatillos, kiwi fruit, agave nectar, avocado, tequila, olive oil, granulated garlic, sea salt, onion powder, cumin, black pepper, fresh cilantro", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/8190561419362.jpg?v=1628200144&width=680")
sauce24.photo.attach(io: file, filename: "Hippy_image", content_type: "image/png")

sauce25 = Product.create!(name: "Garlic Reaper Sauce Hot Sauce", manufacturer: "Torchbearer Sauces", price: 16.00, description: "The first ingredient is this hot sauce is Carolina Reaper, and the second ingredient is garlic. Need we say more? This sauce is unlike any other we’ve had on Hot Ones, with a rich oil base that gives it a creamy texture with just enough savory spices to round out that garlic. Try using it as a marinade for chicken or salmon, or add to a roast beef sandwich for an amazing lunchtime treat. Oh and be sure to have this bottle handy the next time you order a pizza...", ingredients: "Carolina Reaper pepper, garlic, canola oil, water, distilled white vinegar, lime juice, granulated garlic, mustard powder, chili powder, salt", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/7944157921378.jpg?v=1628214667&width=680")
sauce25.photo.attach(io: file, filename: "Guajillo_image", content_type: "image/png")

sauce26 = Product.create!(name: "Fiya! Fiya! Hot Sauce", manufacturer: "Adoboloco", price: 14.00, description: "This newest sauce from Adoboloco stays true to the maker’s Hawaiian roots with a ton of tangy apple cider vinegar but kicks it up a notch with a blend of four hot peppers including ghost, Trinidad scorpion, habanero & jalapeno. Rounded out with sea salt and garlic, Fiya! Fiya! is their hottest yet but is still usable for everyday applications. It’s super versatile, so try it on tacos, eggs, wings, sandwiches and everything in between.", ingredients: "Apple cider vinegar, chili peppers (jalapeno, dried Trinidad scorpion, habanero & ghost), sea salt, garlic ", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/FIYAFIYA_ea4072e4-1c2d-4ef6-b451-3a320e654e91.jpg?v=1628199607&width=680")
sauce26.photo.attach(io: file, filename: "Fiya_image", content_type: "image/png")

sauce27 = Product.create!(name: "Yuzu Heaven Hot Sauce", manufacturer: "Mellow Habanero", price: 24.00, description: "Friends of the Brooklyn hot sauce shop will recognize Mellow Habanero and our good friend Taku “Habanero Man” Kondo of ta-nm farm in Hyogo, Japan! This HEATONIST exclusive hot sauce combines Tak’s favorite golden habanero peppers with tangy, citrusy yuzu. The bright notes of the yuzu juice awaken the senses, leading the way for powerful up-front heat from the habanero. Balanced with mango and sea salt, it’s a one-of-a-kind sauce that can enliven any dish. Try it as a dipping sauce for sushi, on rice bowls, or mixed with soy sauce as a marinade for chicken or pork. Also delicious in cocktails! ", ingredients: "Organic habanero, rice vinegar, yuzu juice, yuzu peel, organic mango, sea salt", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/YUZU1.jpg?v=1628211120&width=680")
sauce27.photo.attach(io: file, filename: "Yuzu_image", content_type: "image/png")

sauce28 = Product.create!(name: "California Raisin Hot Sauce", manufacturer: "Small Axe Peppers", price: 10.00, description: "Oakland California Raisin honors beautiful local ingredients from the newest community gardens in Small Axe Pepper Co’s network. Sourcing jalapenos and serranos grown across Oakland, Small Axe blends them with another classic California export, sun-dried raisins. Breaking out of their boring red box, the raisins provide bold sweetness that is well balanced with carrots, garlic and paprika for a subtle smoky aftertaste. We love this one as a glaze on pork or chicken, and for homemade picadillo!", ingredients: "Apple cider vinegar, jalapeno peppers, serrano peppers, raisins, garlic, carrots, salt, brown sugar, smoked paprika", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Caliraisin1.jpg?v=1628213902&width=680")
sauce28.photo.attach(io: file, filename: "CaliRaisin_image", content_type: "image/png")

sauce29 = Product.create!(name: "Chipotle & Habanero Hot Sauce", manufacturer: "Fresco Sauce", price: 10.00, description: "Citrusy orange habaneros combine with smoky chipotles and bold garlic for your new go-to table sauce. A touch of added sugar plays to the fruit notes of the habanero to balance the whole thing out, then a quick blend with some olive oil enriches the texture and gives body. This highly versatile sauce adds depth to lean proteins like grilled chicken and also shines on burgers, or when used as a dip with fries! ", ingredients: "Habanero peppers, chipotle chili powder, carrots, distilled vinegar, olive oil, garlic, salt, sugar, black pepper, water", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Frescosauce.jpg?v=1628203950&width=680")
sauce29.photo.attach(io: file, filename: "ChipotleHabanero_image", content_type: "image/png")

sauce30 = Product.create!(name: "Maui No Ka Oi Hot Sauce", manufacturer: "Adoboloco", price: 10.00, description: "Everyone’s favorite Hawaiin sauce maker is back with an ode to the Valley Isle, Maui No Ka ‘Oi. In this scorcher, puckery apple cider vinegar splashes onto the palate before a wave of Trinidad Moruga Scorpion pepper heat crashes over you. The citrus-y notes from the Trini peppers add bright, tropical tones that pair perfectly with a bit of sea salt. At a solid 7.5 out of 10, this sauce will leave you feeling the Hawaiin heat. This versatile recipe could grace anything from an italian hero, to fish and chips, to cauliflower wings.", ingredients: "Apple cider vinegar, Trinidad Moruga Scorpion peppers, sea salt, garlic", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Mauiadoboloco.jpg?v=1628199898&width=680")
sauce30.photo.attach(io: file, filename: "Maui_image", content_type: "image/png")

sauce31 = Product.create!(name: "Keith's Chicken Sauce", manufacturer: "Keith's", price: 12.00, description: "Keith Habersberger of The Try Guys is known for his love of fried chicken, especially buffalo wings and ranch. When he challenged HEATONIST to come up with a new hot sauce flavor concept this was a natural place to start. The resulting Keith’s Chicken Sauce channels iconic ranch flavors with dill, parsley, and chives, but sweetens them up with smoked onions, garlic scapes, and Vermont maple syrup. Vinegar, zippy serrano peppers and roasted red pepper add tang while sour cream powder adds a creamy texture that makes this a must-have condiment. Perfect on chicken of all kinds, this sauce cuts through rich foods like fries or a grilled cheese with ease. A must try on pizza!", ingredients: "Organic distilled vinegar, serrano peppers, maple wood smoked onions, pure Vermont maple syrup, garlic scapes, roasted red peppers ( red peppers, water, salt, citric acid) sunflower oil, sour cream powder ( sour cream powder cream cultures and lactic acid, cultured nonfat milk solids, citric acid) salt, dill, parsley, chives, black pepper

CONTAINS MILK", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/Keith_shotsauce.jpg?v=1628210167&width=680")
sauce31.photo.attach(io: file, filename: "KChicken_image", content_type: "image/png")

sauce32 = Product.create!(name: "Headless Horseradish Hot Sauce ", manufacturer: "Torchbearer Sauces", price: 14.00, description: "The Torchbearer team has a knack for crafting sauces that are outright addictive in terms of flavor and heat with a rich, craveable texture. This sauce features zippy, nostril-tickling horseradish as well as garlic, dry mustard and lemon that cut through the creamy texture and intense ghost pepper heat. Use it as a spread on a steak sandwich or as the best-ever dip for fries. ", ingredients: "Horseradish, ghost chili pepper, garlic, canola oil, water, chipotle peppers, lemon juice, distilled white vinegar, dijon mustard, horseradish powder, salt, chili powder, black pepper", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/headlesshorse.jpg?v=1628214754&width=680")
sauce32.photo.attach(io: file, filename: "HeadlessHorseradish_image", content_type: "image/png")

sauce33 = Product.create!(name: "Burn After Eating Hot Sauce", manufacturer: "Karma Sauce", price: 18.00, description: "Gene from Karma Sauce Co always comes up with unique flavor combinations and this is no exception. For Burn After Eating he sourced ajwain, a spice used in Indian cuisine that has a uniquely earthy and bitter flavor. With a secret combination of super-hot peppers including ghost, 7-Pot and scorpion, the sauce’s intense heat stands up to this bold spice mix and makes it a perfect accompaniment to the first soups of the season, or an intense slice of pizza.", ingredients: "Brutally hot peppers, white vinegar, garlic, salt, ajwain seed, amchoor, hing powder (rice flour, gum arabic, asafoetida, turmeric), ginger extract", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/burnafter.jpg?v=1628209938&width=680")
sauce33.photo.attach(io: file, filename: "Burn_image", content_type: "image/png")

sauce34 = Product.create!(name: "Scorpion Hot Sauce", manufacturer: "Heartbeat Hot Sauce", price: 12.00, description: "The good folks at Heartbeat Hot Sauce have brought the heat for Hot Ones Season 13! Their hottest hot sauce yet, this new recipe features Trinidad Scorpion Peppers to get your blood pumping! Even with a unique combination of ingredients, including beets, red bell peppers and chipotles in adobo, this sauce still has the well-balanced versatility you’ve come to expect from the Heartbeat team. With its hot but not too-hot spice level and nuanced flavor, this sauce makes just about any food sing: eggs, pizza, tacos and more. Your new go-to!", ingredients: "Vinegar, red peppers, habaneros, beets, onions, garlic, Trinidad Scorpion Peppers, Chipotles in adobo (red chipotle pepper, water, vinegar, sugar, salt, tomato paste, smoke essence, onion, garlic), salt, lemon juice, canola oil, spices", bottle_size: "6oz")
file = URI.open(https://cdn.shopify.com/s/files/1/2086/9287/products/heartbeat1.jpg?v=1628204324&width=680"")
sauce34.photo.attach(io: file, filename: "Scorpion_image", content_type: "image/png")

sauce35 = Product.create!(name: "Reaper Hot Sauce", manufacturer: "SeaFire Gourmet", price: 12.00, description: "This hot but not too-hot Carolina Reaper sauce gives us big barbecue vibes with smoky chipotles balanced by two different types of vinegar, aromatic garlic and a honey & brown sugar combo for sweetness. Sprinkled with a few of Smokin’ Ed’s Carolina Reaper peppers for building heat, this is your next go-to cook out sauce. Try it on ribs, brisket, grilled portobellos and more!", ingredients: "White wine vinegar, Carolina Reaper peppers, Chipotle peppers, balsamic vinegar, shallots, garlic, honey, brown sugar, Mediterranean sea salt, vitamin C", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/seafire.jpg?v=1628213317&width=680")
sauce35.photo.attach(io: file, filename: "Reaper_image", content_type: "image/png")

sauce36 = Product.create!(name: "Spicier Smoke Hot Sauce", manufacturer: "Shaquanda's", price: 10.00, description: "Everyone’s favorite saucy mama is back and she is spicing things up! A hotter version of the original pepper sauce featured in Season 9 of Hot Ones, this recipe packs a punch thanks to added habanero and has a hint of smoke from paprika powder. The heat makes way for bold Caribbean-inspired flavors: a hit of aromatic onion, punchy mustard, and the natural sweetness of the peppers. Try it with sausage, roasted cauliflower, breakfast hash and more. ", ingredients: "Onion, white vinegar, habanero, roasted red pepper, lemon juice, sugar, salt, mustard, turmeric, smoked paprika powder", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/shaqsmoke1.jpg?v=1628213738&width=680")
sauce36.photo.attach(io: file, filename: "Spiciersmokehotsauce_image", content_type: "image/png")

sauce37 = Product.create!(name: "Goat Rider Hot Sauce", manufacturer: "Angry Goat Pepper Co", price: 12.00, description: "The makers of everyone’s favorite hippy dippy hot sauce are back with a new sauce full of comforting flavors and a medium kick. Cayenne starts off the heat, with a slight upfront burn that makes way for notes of warm balsamic and hints of sweet Vermont maple syrup. Roasted red bell pepper and garlic balance things out on the savory side. Then the ghost pepper peeks in for a little unexpected punch! Delicious on steak, portobello burgers, grilled chicken sandwiches and more! ", ingredients: "Balsamic vinegar (wine vinegar, concentrated grape must, caramel color), cayenne pepper mash (cayenne peppers, salt), Vermont maple syrup, roasted red pepper (roasted red bell peppers, water, citric acid & salt), molasses, garlic powder, apple cider vinegar, ghost pepper mash (ghost peppers, vinegar), smoked paprika, ghost pepper powder", bottle_size: "5oz")
file = URI.open("https://cdn.shopify.com/s/files/1/2086/9287/products/ANGRYGOAT1.jpg?v=1628200179&width=680")
sauce37.photo.attach(io: file, filename: "Goat_image", content_type: "image/png")

sauce38 = Product.create!(name: "", manufacturer: "", price: , description: "", ingredients: "", bottle_size: "oz")
file = URI.open("")
sauce38.photo.attach(io: file, filename: "Guajillo_image", content_type: "image/png")


sauce39 = Product.create!(name: "", manufacturer: "", price: , description: "", ingredients: "", bottle_size: "oz")
file = URI.open("")
sauce39.photo.attach(io: file, filename: "Guajillo_image", content_type: "image/png")

LOCATIONS = ["North America", "South America", "South East Asia", "Middle East", "Africa", "Europe"]

Product.all.each do |product|
  product.location = LOCATIONS.sample.gsub(/\s+/, "")
  puts "added #{product.location} to #{product.name}"
  product.save!
end

puts "DONE"
