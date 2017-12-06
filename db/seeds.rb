User.destroy_all
Truck.destroy_all
Location.destroy_all
Review.destroy_all
Favorite.destroy_all
Schedule.destroy_all
Item.destroy_all
Neighborhood.destroy_all
Category.destroy_all

cat1 = Category.create(name: "Halal")
cat2 = Category.create(name: "Jamaican")
cat3 = Category.create(name: "Mexican")

truck1 = Truck.create(name: "The Halal Guys", category_id: 1)

item1 = Item.create(name:"Beef Over Rice", price: 11, truck_id: 1 )
item1 = Item.create(name:"Chicken and Beef Combo over Rice", price: 12, truck_id: 1 )
item1 = Item.create(name:"Chicken over Rice", price: 9, truck_id: 1 )
item1 = Item.create(name:"Chicken and Beef Combo Sandwich", price: 10, truck_id: 1 )
item1 = Item.create(name:"Chicken Sandwich", price: 9, truck_id: 1 )
item1 = Item.create(name:"Gyro Sandwich", price: 10, truck_id: 1 )
item1 = Item.create(name:"Falafel Sandwich", price: 6, truck_id: 1 )
item1 = Item.create(name:"Falafel over Rice", price:6, truck_id: 1 )

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
