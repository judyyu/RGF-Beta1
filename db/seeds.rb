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

/*Value.create(:name=>'Local')
Value.create(:name=>'Homegrown')
Value.create(:name=>'Farmers Market')
Value.create(:name=>'CSA')
Value.create(:name=>'Conventional')
Value.create(:name=>'Grass Fed')
Value.create(:name=>'Free Range')
*/

EatByDate.create(:name=>'shelf stable')
EatByDate.create(:name=>'Freezer')
EatByDate.create(:name=>'Fridge')
EatByDate.create(:name=>'Room Temperature')

EventType.create(:name=>"potluck")
EventType.create(:name=>"swap")
EventType.create(:name=>"Dinner Party")
EventType.create(:name=>"Collaborative Cooking Event")


Page.create(:title =>"How it Works",
            :body => "Real Good Food (RGF) is a platform for coordinating online food swaps, planning in-person food events, and cultivating “sharing economies” based around the delicious, sustainable food in your community. If you’re a pro at making homemade salsas, love baking bread, have a bumper crop of squash from your garden, or just hate to be the only person eating the whole pot of soup you made, use RGF to post your bounty. 

<p>Swap that extra soup for your neighbor’s muffins, or the promise of a home cooked dinner to be delivered later on! If you don’t have anything to trade right now, but are in the mood to try something new, search the listings for something that catches your eye and connect with the cook to see if you can return the favor when you do have something to give away.

<p>Once you settle on a trade, you and your trading partner can decide where to meet or drop the food off (at your house? the farmers’ market? a cafe you both drive by on the way home?).  Then all that’s left to do is enjoy your Real Good Food!

<p>As our site continues to develop, you’ll be able to form groups with the people you most want to trade with, be they immediate neighbors, or everyone in your area with a certain dietary interest (think Durham vegans, Ann Arbor gluten-free folks, or Indian food aficionados in your town).

<p>In addition to connecting online, use RGF to grow your offline community.  Get plugged into events coming up on the community calendar or plan new ones. Attend and organize potlucks, food swaps, cook-offs, workshops, food drives or anything else you’re craving.

<p>In short, cook good food, eat good food and share. Always eat awesome.")

Page.create(:title =>"Team",
            :body => "")

Page.create(:title =>"Privacy Policy",
            :body => "We at RGF take your privacy very seriously. Personal information can be anything that can be used to identify an individual, not limited to but including; name, address, date of birth, contact information will not be shared with anyone and it is kept confidential.")

Page.create(:title =>"Terms And Conditions",
            :body => "Disclaimer/Terms of Use

Access and use of www.RealGoodFood.org (“RGF”) constitutes immediate acceptance and agreement to this Disclaimer in full, and agreement to be bound by the terms of this Disclaimer as a “User”.  If you do not accept and agree to the Disclaimer in whole or in part you may terminate all access and use of RGF, and continued access or use of RGF is prohibited and unauthorized.
<br>
<h3>Health & Safety</h3>
<ol>
<li>Users certify to the best of their knowledge and belief that all information they provide in a transaction or to other users is true, current and correct, and acknowledge that failure to fully and accurately report information may result in termination of access and use of RGF, and in criminal or civil penalties.</li>
<li> RGF is an online logistical support platform for the coordination of food trades.  RGF is not in any way connected to or responsible for items traded on the site, and at no point in a trade sees, handles or attests to a traded food’s ingredients, quality or preparation.</li>
<li>RGF does not certify that food traded on its platform meets any health or safety standards and is not liable for any user’s failure to comply with applicable health or safety standards.</li>
<li>Users must exercise their best judgment and discretion when deciding what to trade and consume.</li>
<li>If you are uncomfortable with what you receive in a trade you are free to cancel the trade and or not eat what you obtain.  </li>
</ol>

<h3>Content</h3>

<ol>
<li> RGF is not responsible for user-generated content.</li>
<li>Users are wholly responsible for any content posted or transmitted through their accounts.</li>

<h3>Tax Liability</h3>
Items bartered using RGF may be subject to state and federal taxes.  Users agree to abide by all federal and state tax laws and are wholly responsible for any state or federal taxes incurred by use of RGF.   ")
