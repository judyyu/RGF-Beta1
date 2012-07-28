# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FoodCategory.create(:name => 'Main')
FoodCategory.create(:name => 'Side')
FoodCategory.create(:name => 'Dessert')
FoodCategory.create(:name => 'Sauce/Dressing/Curry')
FoodCategory.create(:name => 'Fresh Ingredients')

FoodRestriction.create(:name=>'Organic')
FoodRestriction.create(:name=>'Vegeterian')
FoodRestriction.create(:name=>'Vegan')
FoodRestriction.create(:name=>'Dairy-free')
FoodRestriction.create(:name=>'Gluten-free')
FoodRestriction.create(:name=>'Peanut Safe')


Value.create(:name=>'Organic')
Value.create(:name=>'Vegeterian')
Value.create(:name=>'Vegan')
Value.create(:name=>'Dairy-free')
Value.create(:name=>'Gluten-free')
Value.create(:name=>'Peanut Safe')

#Value.create(:name=>'Local')
#Value.create(:name=>'Homegrown')
#Value.create(:name=>'Farmers Market')
#Value.create(:name=>'CSA')
#Value.create(:name=>'Conventional')
#Value.create(:name=>'Grass Fed')
#Value.create(:name=>'Free Range')


EatByDate.create(:name=>'shelf stable')
EatByDate.create(:name=>'Freezer')
EatByDate.create(:name=>'Fridge')
EatByDate.create(:name=>'Room Temperature')

EventType.create(:name=>"potluck")
EventType.create(:name=>"swap")
EventType.create(:name=>"Dinner Party")
EventType.create(:name=>"Collaborative Cooking Event")


#Page.create(:title =>"How it Works",
#            :body => "Always eat awesome.")*/
