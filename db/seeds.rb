# frozen_string_literal: true
require 'json'
require 'open-uri'

puts 'Cleaning the database.'
Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = URI.open(url).read
ingredients = JSON.parse(ingredients_serialized)

ingredients['drinks'].each do |ingredient|
  cocktail_ingredient = Ingredient.create(name: ingredient['strIngredient1'])
  puts cocktail_ingredient.name
end
