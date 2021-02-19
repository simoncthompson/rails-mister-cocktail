cocktail_list = %w(sidecar 'old fashioned' 'gin fizz' mojito martini margerita 'aperol spritz' manhattan)

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

cocktail_list.each do |cocktail_name|
  cocktail = Cocktail.create(name: cocktail_name)
  3.times do
    ingredient = Ingredient.create(name: Faker::Food.ingredient)
    Dose.create(cocktail: cocktail, ingredient: ingredient, description: Faker::Food.measurement)
  end
end
