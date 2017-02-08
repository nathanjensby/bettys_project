# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
Measurement.destroy_all
Recipe.destroy_all
Category.destroy_all
CategoriesRecipe.destroy_all


cpp = Recipe.create({
  name: "Chicken Pot Pie",
  instructions: "Get all your shit together and put it together in a thing, bake at 350 for 100 days."
  })

chicken = Item.create({name: "Chicken"})
p_crust = Item.create({name: "Pie Crust"})
c_of_c = Item.create({name: "Cream of Chicken"})

apps = Category.create({name: "Appetizers"})
soup = Category.create({name: "Soups"})
mains = Category.create({name: "Mains"})
sides = Category.create({name: "Sides"})
dess = Category.create({name: "Desserts"})
poultry = Category.create({name: "Poultry"})
beef = Category.create({name: "Beef"})
pork = Category.create({name: "Pork"})
vegetarian = Category.create({"Vegetarian"})
other = Category.create({name: "Other"})


m1 = Measurement.new
m1.amount = "1 lb"
m1.item_id = chicken.id
m1.recipe_id = cpp.id
m1.save

m2 = Measurement.new
m2.amount = "1 package"
m2.item_id = p_crust.id
m2.recipe_id = cpp.id
m2.save

m3 = Measurement.new
m3.amount = "10 oz"
m3.item_id = c_of_c.id
m3.recipe_id = cpp.id
m3.save

join1 = CategoriesRecipe.new
join1.recipe_id = cpp.id
join1.category_id = mains.id
join1.save

join2 = CategoriesRecipe.new
join2.recipe_id = cpp.id
join2.category_id = poultry.id
join2.save
