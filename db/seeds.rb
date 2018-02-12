# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.delete_all
Product.delete_all
Order.delete_all

Category.create! id: 1, name: "Food", desc: "Describes food"
Category.create! id: 2, name: "Electronics", desc: "Describes electronic items"
Category.create! id: 3, name: "Toys", desc: "Describes toys"
Category.create! id: 4, name: "Kitchen", desc: "Describes kitchen items "

Product.create! id: 1, name: "Banana", price: 0.50, category_id: 1
Product.create! id: 2, name: "Apple", price: 0.75, category_id: 1
Product.create! id: 3, name: "Kiwi", price: 1.00, category_id: 1
Product.create! id: 4, name: "Cellphone", price: 555.15, category_id: 2
Product.create! id: 5, name: "Laptop", price: 20345.00, category_id: 2
Product.create! id: 6, name: "Adapter", price: 25.03, category_id: 2

# OrderStatus.create! id: 1, name: "In Progress"
# OrderStatus.create! id: 2, name: "Placed"
# OrderStatus.create! id: 3, name: "Shipped"
# OrderStatus.create! id: 4, name: "Cancelled"

Order.create! id: 1