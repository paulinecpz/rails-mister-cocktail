puts "Deleting all ingredients..."

Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

response = RestClient.get(url)
json = JSON.parse(response.body, symbolize_names: true)

puts "Creating ingredients"
json[:drinks].each do |ingredient|
  puts "- Creating '#{ingredient[:strIngredient1]}'"
  Ingredient.create!(name: ingredient[:strIngredient1])
end

puts "All done 🍸"
