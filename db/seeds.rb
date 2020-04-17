# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Workout.destroy_all

Workout.create(typeOf: "bench_example",
weight: 135,
set: 3,
reps: 3-4)

Contact.create(email: "my email", number: 719-405-3485, comment: 'call me when u have sometime')