User.all
Truck.destroy_all
Location.destroy_all
Review.destroy_all
Favorite.destroy_all
Schedule.destroy_all
Item.destroy_all
Neighborhood.destroy_all
Category.destroy_all

neighborhood_1 = Neighborhood.create(name: "Midtown")
neighborhood_2 = Neighborhood.create(name: "Jamaica")
neighborhood_3 = Neighborhood.create(name: "Astoria")

loc1 = Location.create(street_address: "300 West 55th Street", city: "New York", state: "NY", zip: "10019", neighborhood_id: neighborhood_1.id)
loc2 = Location.create(street_address: "3105 Astoria Blvd S", city: "Astoria", state: "NY", zip: "11101", neighborhood_id: neighborhood_3.id)
loc3 = Location.create(street_address: "11811 84th Avenue", city: "Kew Gardens", state: "NY", zip: "11415", neighborhood_id: neighborhood_2.id)
loc4 = Location.create(street_address: "Columbus Circle", city: "New York", state: "NY", zip: "10019", neighborhood_id: neighborhood_1.id)
loc5 = Location.create(street_address: "Bryant Park", city: "New York", state: "NY", zip: "10018", neighborhood_id: neighborhood_1.id)

priyam = User.create(f_name: "Priyam", l_name: "Sarma", email: "priyam.sarma@gmail.com", username: "psarma89", password: "priyam", password_confirmation: "priyam", location_id: loc1.id)
rochel = User.create(f_name: "Rochel", l_name: "Levi", email: "rochel.levi@gmail.com", username: "rlevi96", password: "rochel", password_confirmation: "rochel", location_id: loc2.id)
mark = User.create(f_name: "Mark", l_name: "White", email: "mark@gmail.com", username: "mwhite", password: "markwhite", password_confirmation: "markwhite", location_id: loc2.id)
jazmin = User.create(f_name: "Jazmin", l_name: "Sanchez", email: "jsanchez@gmail.com", username: "jslovespuppies", password: "jazmin", password_confirmation: "jazmin", location_id: loc2.id)
mike = User.create(f_name: "Mike", l_name: "Samet", email: "msamet@gmail.com", username: "mickey", password: "mikesamet", password_confirmation: "mikesamet", location_id: loc2.id)
frankie = User.create(f_name: "Frankie", l_name: "Chen", email: "fchen@gmail.com", username: "frankc", password: "frankie", password_confirmation: "frankie", location_id: loc2.id)
craig = User.create(f_name: "Craig", l_name: "Chu", email: "craigchu@gmail.com", username: "craigndiane", password: "craigchu", password_confirmation: "craigchu", location_id: loc2.id)
greg = User.create(f_name: "Greg", l_name: "Zelikovsky", email: "gzelikov@gmail.com", username: "zelikov", password: "gregory", password_confirmation: "gregory", location_id: loc2.id)
martin = User.create(f_name: "Martin", l_name: "Weiss", email: "weiss.marty@gmail.com", username: "marty", password: "martin", password_confirmation: "martin", location_id: loc2.id)


cat1 = Category.create(name: "Halal")
cat2 = Category.create(name: "Jamaican")
cat3 = Category.create(name: "Mexican")
cat3 = Category.create(name: "Juice")

truck1 = Truck.create(name: "The Halal Guys", category_id: cat1.id, location_id: loc1.id)
truck2 = Truck.create(name: "Jus by Julie", category_id: cat2.id, location_id: loc4.id)

# review1(title: , content:, rating: , truck_id: , user_id:)
# review2(title: , content:, rating: , truck_id: , user_id:)
# review3(title: , content:, rating: , truck_id: , user_id:)
# review4(title: , content:, rating: , truck_id: , user_id:)
# review5(title: , content:, rating: , truck_id: , user_id:)
# review6(title: , content:, rating: , truck_id: , user_id:)
# review7(title: , content:, rating: , truck_id: , user_id:)
# review8(title: , content:, rating: , truck_id: , user_id:)
# review9(title: , content:, rating: , truck_id: , user_id:)
# review10(title: , content:, rating: , truck_id: , user_id:)
# review11(title: , content:, rating: , truck_id: , user_id:)
# review12(title: , content:, rating: , truck_id: , user_id:)
# review13(title: , content:, rating: , truck_id: , user_id:)
# review14(title: , content:, rating: , truck_id: , user_id:)
# review15(title: , content:, rating: , truck_id: , user_id:)
# review16(title: , content:, rating: , truck_id: , user_id:)
# review17(title: , content:, rating: , truck_id: , user_id:)
# review18(title: , content:, rating: , truck_id: , user_id:)
# review19(title: , content:, rating: , truck_id: , user_id:)
# review20(title: , content:, rating: , truck_id: , user_id:)
# review21(title: , content:, rating: , truck_id: , user_id:)
# review22(title: , content:, rating: , truck_id: , user_id:)
# review23(title: , content:, rating: , truck_id: , user_id:)
# review24(title: , content:, rating: , truck_id: , user_id:)
# review25(title: , content:, rating: , truck_id: , user_id:)

item1 = Item.create(name:"Beef Over Rice", price: 11, truck_id: truck1.id )
item2 = Item.create(name:"Chicken and Beef Combo over Rice", price: 12, truck_id: truck1.id )
item3 = Item.create(name:"Chicken over Rice", price: 9, truck_id: truck1.id )
item4 = Item.create(name:"Chicken and Beef Combo Sandwich", price: 10, truck_id: truck1.id )
item5 = Item.create(name:"Chicken Sandwich", price: 9, truck_id: truck1.id )
item6 = Item.create(name:"Gyro Sandwich", price: 10, truck_id: truck1.id )
item7 = Item.create(name:"Falafel Sandwich", price: 6, truck_id: truck1.id )
item8 = Item.create(name:"Falafel over Rice", price:6, truck_id: truck1.id )
item9 = Item.create(name:"Feta Salad", price:13, truck_id: truck2.id )
item10 = Item.create(name:"Kale Salad with Tempeh", price:13, truck_id: truck2.id )
item10 = Item.create(name:"Quinoa Salad", price:12, truck_id: truck2.id )
item11 = Item.create(name:"Tuna Salad", price: 13, truck_id: truck2.id )
item12 = Item.create(name:"Sweet Spin", price:8, truck_id: truck2.id )
item13 = Item.create(name:"Xtreme Greens", price:8, truck_id: truck2.id )
item14 = Item.create(name:"Chia Berry", price:8, truck_id: truck2.id )
item15 = Item.create(name:"PB Power", price:10, truck_id: truck2.id )
item15 = Item.create(name:"Coconut Water", price:6, truck_id: truck2.id )

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
