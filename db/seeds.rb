cocktail_names = %w[sidecar 'old fashioned' 'gin fizz' mojito martini margerita 'aperol spritz' manhattan]

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

cocktails = []
ingredients = []

cocktail_names.each do |cocktail_name|
  cocktails << Cocktail.create(name: cocktail_name)
end

50.times do
  ingredients << Ingredient.create(name: Faker::Food.ingredient)
end

cocktails.each do |cocktail|
  Dose.create(cocktail: cocktail, ingredient: ingredients.sample, description: Faker::Food.measurement)
end
