require 'json'
require 'open-uri'
puts "cleaning"
Ingredient.destroy_all
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drink = open(url).read
ingredients = JSON.parse(drink)
ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end
puts 'Finished!'
