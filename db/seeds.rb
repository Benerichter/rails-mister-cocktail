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
