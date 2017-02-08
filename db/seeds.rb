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

m_loaf = Recipe.create({
  name: "Meatloaf",
  instructions: "Combine all ingredients together, put in loaf pan. Smear ketchup on top. Cook 1 hour at 350"
  })

onion_dip = Recipe.create({
  name: "Vidalia Onion Dip",
  instructions: "Mix all ingredients and place in greased casserole dish. Heat at 350 for 20-30 minutes until bubbly. Double recipe for a party!"
  })


v_onion = Item.create({name: "Vidalia Onion"})
mayo = Item.create({name: "Mayonnaise"})
swiss = Item.create({name: "Swiss Cheese"})
egg = Item.create({name: "Egg"})
b_p = Item.create({name: "Ground Beef and Pork mix"})
y_must = Item.create({name: "Yellow Mustart"})
ketch = Item.create({name: "Ketchup"})
onion = Item.create({name: "Onion"})
green_pep = Item.create({name: "Green Pepper"})
worst = Item.create({name: "Worcestershire"})
s = Item.create({name: "Salt"})
pep = Item.create({name: "Pepper"})
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
vegetarian = Category.create({name: "Vegetarian"})
other = Category.create({name: "Other"})

m15 = Measurement.new
m15.amount = "1 cup shredded"
m15.item_id = swiss.id
m15.recipe_id = onion_dip.id
m15.save

m14 = Measurement.new
m14.amount = "1 cup"
m14.item_id = mayo.id
m14.recipe_id = onion_dip.id
m14.save

m13 = Measurement.new
m13.amount = "1 cup chopped"
m13.item_id = v_onion.id
m13.recipe_id = onion_dip.id
m13.save

m12 = Measurement.new
m12.amount = "(to taste)"
m12.item_id = pep.id
m12.recipe_id = m_loaf.id
m12.save

m11 = Measurement.new
m11.amount = "(to taste)"
m11.item_id = s.id
m11.recipe_id = m_loaf.id
m11.save

m10 = Measurement.new
m10.amount = "1 Tbsp"
m10.item_id = worst.id
m10.recipe_id = m_loaf.id
m10.save

m9 = Measurement.new
m9.amount = "1 chopped"
m9.item_id = green_pep.id
m9.recipe_id = m_loaf.id
m9.save

m8 = Measurement.new
m8.amount = "1 chopped"
m8.item_id = onion.id
m8.recipe_id = m_loaf.id
m8.save

m7 = Measurement.new
m7.amount = "1/4 cup"
m7.item_id = ketch.id
m7.recipe_id = m_loaf.id
m7.save

m6 = Measurement.new
m6.amount = "1 Tbsp"
m6.item_id = y_must.id
m6.recipe_id = m_loaf.id
m6.save

m5 = Measurement.new
m5.amount = "1 lb"
m5.item_id = b_p.id
m5.recipe_id = m_loaf.id
m5.save

m4 = Measurement.new
m4.amount = "1"
m4.item_id = egg.id
m4.recipe_id = m_loaf.id
m4.save

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

join5 = CategoriesRecipe.new
join5.recipe_id = v_onion.id
join5.category_id = vegetarian.id
join5.save

join5 = CategoriesRecipe.new
join5.recipe_id = v_onion.id
join5.category_id = apps.id
join5.save

join5 = CategoriesRecipe.new
join5.recipe_id = m_loaf.id
join5.category_id = pork.id
join5.save

join4 = CategoriesRecipe.new
join4.recipe_id = m_loaf.id
join4.category_id = beef.id
join4.save

join3 = CategoriesRecipe.new
join3.recipe_id = m_loaf.id
join3.category_id = mains.id
join3.save

join1 = CategoriesRecipe.new
join1.recipe_id = cpp.id
join1.category_id = mains.id
join1.save

join2 = CategoriesRecipe.new
join2.recipe_id = cpp.id
join2.category_id = poultry.id
join2.save
