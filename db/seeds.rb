# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create login user
User.create([
	{ name: "Test User", email: "test@gmail.com", password: "12345678"}
])

#create products
Product.create([
	{ title: 'Plastic Chairs', description: "", total_quantity: 10000, price_per_day: 50, active: true }, 
	{ title: 'Tiffany Chairs', total_quantity: 5000, price_per_day: 100, active: true },
	{ title: 'Bridal Chair', total_quantity: 10, price_per_day: 200, active: true },
	{ title: 'Plastic Round Tables', total_quantity: 100, price_per_day: 250, active: true },
	{ title: 'Plastic Rectangular Table', total_quantity: 90, price_per_day: 270, active: true },
	{ title: 'Steel Folding Table', total_quantity: 80, price_per_day: 120, active: true },
	{ title: 'Gas Stoves', total_quantity: 25, price_per_day: 100, active: true },
	{ title: 'Table Cloths', total_quantity: 500, price_per_day: 10, active: true },
	{ title: 'Sleeping Bags', total_quantity: 100, price_per_day: 300, active: true }
])


#create customers
Customer.create([
	{name: "Vishal Pandey"},
	{name: "Shubham Gupta"},
	{name: "Anand Shukla"},
	{name: "Pranav Verma"},
	{name: "Vaibhav Saxena"}
])