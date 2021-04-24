# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 u = User.create(name: "Jennifer", email: "Jennifer@jennifer.com")
 u2 = User.create(name: "Bono", email: "bono@u2.com")
puts "Users were seeded"
u.timeslots.create(activity: "Building my project", booked_time: DateTime.now())
u2.timeslots.create(activity: "Building my project", booked_time: DateTime.now())

 puts "Seeded the Database"