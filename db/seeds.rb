require 'open-uri'

puts 'Cleaning database...'
Ingredient.destroy_all
Cocktail.destroy_all

dummy_data_ingredients = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
dummy_data_ingredients['drinks'].each do |e|
  ingredient = Ingredient.create(name: e['strIngredient1'])
  puts "Created #{ingredient.name}"
end
puts "Finished. Created #{Ingredient.count} ingredients"

# dummy_data_cocktails = ['Martini', 'Manhattan', 'Bloody Mary', 'Margarita', 'Old Fashioned Cocktail', 'Mojito', 'Daiquiri', 'Gin and Tonic', 'Screwdriver', 'Gimlet']
# dummy_data_cocktails.each do |e|
#   cocktail = Cocktail.create(name: e)
#   puts "Created #{cocktail.name}"
# end

# puts "Finished. Created #{Cocktail.count} cocktails"
cocktails = [['Accoutrement', 'https://images.unsplash.com/photo-1470337458703-46ad1756a187?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Affinity', 'https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Apple Harvest', 'https://images.unsplash.com/photo-1550426735-c33c7ce414ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Aristocrat Stinger', 'https://images.unsplash.com/photo-1558645836-e44122a743ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Aviation', 'https://images.unsplash.com/photo-1536599424071-0b215a388ba7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Bamboo Cocktail', 'https://images.unsplash.com/photo-1551538827-9c037cb4f32a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Bayswater Café', 'https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Beuser & Angus Special', 'https://images.unsplash.com/photo-1551024709-8f23befc6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Big Apple', 'https://images.unsplash.com/photo-1486428263684-28ec9e4f2584?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Bijou', 'https://images.unsplash.com/photo-1556855810-ac404aa91e85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Bitter & Twisted Nail', 'https://images.unsplash.com/photo-1559443922-3f698a0ff27a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Black Tea Sour', 'https://images.unsplash.com/photo-1562708294-4df93280352d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Black Velvet', 'https://images.unsplash.com/photo-1566284628402-3f0895b3eb28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Blackthorn', 'https://images.unsplash.com/photo-1500217052183-bc01eee1a74e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Blood and Sand', 'https://images.unsplash.com/photo-1527271982979-83fea3eb3582?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Blueberry Lemonade', 'https://images.unsplash.com/photo-1556679343-c7306c1976bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Bramble', 'https://images.unsplash.com/photo-1560963689-b5682b6440f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Brandy Cocktailkirschen', 'https://images.unsplash.com/photo-1563223771-5fe4038fbfc9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Calvados Cocktail', 'https://images.unsplash.com/photo-1553451133-8083c47243d6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Capricious', 'https://images.unsplash.com/photo-1514361892635-6b07e31e75f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Casino Soul', 'https://images.unsplash.com/photo-1560508180-03f285f67ded?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Châtelaine', 'https://images.unsplash.com/photo-1470338745628-171cf53de3a8?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'],
             ['Chrysanthemum Cocktail', 'https://images.unsplash.com/photo-1512103865222-dcf9531c9961?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Cilantro Paso', 'https://images.unsplash.com/photo-1582837611539-e3020079eab6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Citrus 75', 'https://images.unsplash.com/photo-1553607558-455f4310f6ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Clubland', 'https://images.unsplash.com/photo-1527661591475-527312dd65f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Cocktail Nuss-Mischung', 'https://images.unsplash.com/photo-1568100119676-7b8aaffdb851?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Comte de Sureau', 'https://images.unsplash.com/photo-1545438102-799c3991ffb2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Corpse Reviver #2', 'https://images.unsplash.com/photo-1549746423-e5fe9cafded8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Cream Gin Fizz', 'https://images.unsplash.com/photo-1555766720-1e727844cc8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Daiquiri Natural', 'https://images.unsplash.com/photo-1506802913710-40e2e66339c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Décolletage', 'https://images.unsplash.com/photo-1572590016064-3e6ae9c04947?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Derby Cocktail', 'https://images.unsplash.com/photo-1575023782549-62ca0d244b39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Dillinger Cocktail', 'https://images.unsplash.com/photo-1481391564276-da6fcacaee31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['El Diablo', 'https://images.unsplash.com/photo-1560831503-c9217b8e0e43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Fallen Angel', 'https://images.unsplash.com/photo-1562707904-8280ad4e2bb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Farm Paradise', 'https://images.unsplash.com/photo-1578664182178-7079cc6dd953?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Forgotten Connection', 'https://images.unsplash.com/photo-1527761939622-9119094630cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['French 75', 'https://images.unsplash.com/photo-1527762055594-4956c0c8c617?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Fresco', 'https://images.unsplash.com/photo-1563223771-375783ee91ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Geisha', 'https://images.unsplash.com/photo-1510626176961-4b57d4fbad03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Gild The Lily', 'https://images.unsplash.com/photo-1578664183011-be4a83b2a90d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Gin & Tonic Variationen', 'https://images.unsplash.com/photo-1550850584-455a131629e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Gin Basil Smash', 'https://images.unsplash.com/photo-1578664182354-e3878189cdac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Golden Age', 'https://images.unsplash.com/photo-1499638673689-79a0b5115d87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Hanky Panky Cocktail', 'https://images.unsplash.com/photo-1560508179-b2c9a3f8e92b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Harvest Moon', 'https://images.unsplash.com/photo-1511715112108-9acc6c3ff61f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Hemingway Daiquiri', 'https://images.unsplash.com/photo-1536935558068-364dcd7a75b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Her Majesty’s Pearl Cocktail', 'https://images.unsplash.com/photo-1582056509381-33e11b85733f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Holunderpunsch mit Gin', 'https://images.unsplash.com/photo-1485265449635-ca623a55e95c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Honey Bee', 'https://images.unsplash.com/photo-1566733971017-f6a46e832e95?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Hot Fizz', 'https://images.unsplash.com/photo-1570821574759-c104ca40f7b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Hot Toddy', 'https://images.unsplash.com/photo-1578664182930-39d6469c49bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Larchmont', 'https://images.unsplash.com/photo-1501199532894-9449c0a85a77?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Last Word', 'https://images.unsplash.com/photo-1486947799489-3fabdd7d32a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Lily Blossom', 'https://images.unsplash.com/photo-1500631195312-e3a9a5819f92?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Little Big Country', 'https://images.unsplash.com/photo-1578664279548-eee4d985cb80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['London Calling', 'https://images.unsplash.com/photo-1582457601528-5f8757143fb1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Machagata Mamai', 'https://images.unsplash.com/photo-1571577556441-cd4af9c209f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Mai Tai', 'https://images.unsplash.com/photo-1559530808-2bc2a54df8d6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Manhattan', 'https://images.unsplash.com/photo-1547595429-da06b6a5080a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Monaco Friar', 'https://images.unsplash.com/photo-1586124288021-d7c77cb72711?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Mount Vernon', 'https://images.unsplash.com/photo-1570972257270-9c9325f65148?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Negroni', 'https://images.unsplash.com/photo-1586338211598-e2d64cf97e28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Norwegian Wood', 'https://images.unsplash.com/photo-1578664182263-c20a65fa927b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Old Cuban', 'https://images.unsplash.com/photo-1578664183076-f8400be8c30b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Old Hickory Cocktail', 'https://images.unsplash.com/photo-1578664279522-644eace14e48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Oliveto', 'https://images.unsplash.com/photo-1575650772417-e6b418b0d106?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Paddington', 'https://images.unsplash.com/photo-1563312416-c759569b3837?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Paloma', 'https://images.unsplash.com/photo-1587223962930-cb7f31384c19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Petruchio Cocktail', 'https://images.unsplash.com/photo-1588673523898-687eaf18c036?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Pisco Sour', 'https://images.unsplash.com/photo-1564087734-f791fbd53ec8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Poppies In October', 'https://images.unsplash.com/photo-1587223962281-365b9c129fcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Ramos Gin Fizz', 'https://images.unsplash.com/photo-1580589247294-338a5d538d6b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Remember The Maine', 'https://images.unsplash.com/photo-1578664182508-0298cbe8a169?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Rucola Mojito', 'https://images.unsplash.com/photo-1570099268837-443d0e82c832?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Russian Spring Punch', 'https://images.unsplash.com/photo-1566075321480-193b88d6c33b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Scorpion Bowl', 'https://images.unsplash.com/photo-1572363626275-6bcce0f80861?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Side Car', 'https://images.unsplash.com/photo-1586230556456-974c832189a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Smokey Old Bastard', 'https://images.unsplash.com/photo-1565539467422-3d3a78116be9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Sophisticated Lady', 'https://images.unsplash.com/photo-1578664279401-815db69984f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Sour Cherry', 'https://images.unsplash.com/photo-1544145945-f766fea72784?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Spanish Armada', 'https://images.unsplash.com/photo-1568752114168-ef1ec63ffd18?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Spiced Vanilla Punch', 'https://images.unsplash.com/photo-1556994302-558991b74265?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Starry Night', 'https://images.unsplash.com/photo-1468465236047-6aac20937e92?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'],
             ['Tempter Cocktail', 'https://images.unsplash.com/photo-1557395703-b5202a63d0f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['The Grey Flannel', 'https://images.unsplash.com/photo-1560351520-48e05f3d7d16?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['The Rembrandt', 'https://images.unsplash.com/photo-1580244853908-9abf53683059?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['The Revolver', 'https://images.unsplash.com/photo-1495270804540-e6d9120e6f50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['The Wallace', 'https://images.unsplash.com/photo-1572337510640-3af9beaa77b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['The Widow’s Kiss', 'https://images.unsplash.com/photo-1578664182817-7696678a38e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Ti‘ Punch', 'https://images.unsplash.com/photo-1587282867249-c6c635914e50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Tuscan Fresco', 'https://images.unsplash.com/photo-1587282864230-5c518e5fd250?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Vieux Mot', 'https://images.unsplash.com/photo-1568500236751-cf62d6ef9049?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Violet Fizz', 'https://images.unsplash.com/photo-1587888637140-849b25d80ef9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Weißer Glühwein', 'https://images.unsplash.com/photo-1588443853331-28567767d54c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['White Cargo', 'https://images.unsplash.com/flagged/photo-1587282864638-c42afb4b34e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Wicked Wahine', 'https://images.unsplash.com/photo-1574026266411-b4256800b9eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'],
             ['Winter Wermut', 'https://images.unsplash.com/photo-1549286961-9c683177abce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60']]

cocktails.each do |e|
  file = URI.open(e[1])
  cocktail = Cocktail.create(name: e[0])
  cocktail.photo.attach(io: file,
                        filename: 'nes.png',
                        content_type: 'image/png')
  puts "Created #{e[0]}"
end

puts "Created #{Cocktail.count} cocktails"
