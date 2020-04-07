# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hope.destroy_all

Hope.create(title: "My first job as a software engineer", description: "I hope I can get an awesome job after graduating from Flatiron School.", category: "career")
Hope.create(title: "Coronavirus pandemic", description: "I hope the Coronavirus pandemic will end soon.", category: "world news")
Hope.create(title: "Cat happiness", description: "I hope that my cat is happy.", category: "pet")