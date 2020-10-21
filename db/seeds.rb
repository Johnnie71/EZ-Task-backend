# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name: "Johnnie")

Task.destroy_all
User.destroy_all
Category.destroy_all

User.create(name: "User")
User.create(name: "User")
User.create(name: "User")



Category.create(name: "Vacation")
Category.create(name: "Work")
Category.create(name: "Social Event")
Category.create(name: "Weddings")
Category.create(name: "Car Maintence")
Category.create(name: "Sports")
Category.create(name: "Appointments")
Category.create(name: "Groceries")
Category.create(name: "Family Event")
Category.create(name: "Reservations")
Category.create(name: "School")
Category.create(name: "Pets")
Category.create(name: "Chores")
Category.create(name: "Birthdays")
Category.create(name: "Misceallanous")


Task.create(subject: "School", content: "school sucks", user_id: User.first.id, category_id: Category.all.sample.id)
Task.create(subject: "Work meeting", content: "Algorithms", user_id: User.first.id, category_id: Category.all.sample.id)
Task.create(subject: "Cohort Meeting", content: "Code Hort", user_id: User.first.id, category_id: Category.all.sample.id)
Task.create(subject: "doctor appt", content: "covid vaccine", user_id: User.first.id, category_id: Category.all.sample.id)
