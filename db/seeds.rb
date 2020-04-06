# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hope.destroy_all

Hope.create(title: "first job as a software engineer", description: "i hope i can get an awesome job after i graduate from flatiron school.", category: "career")
Hope.create(title: "coronavirus", description: "i hope that the coronavirus pandemic will end soon.", category: "world news")
Hope.create(title: "cat", description: "i hope that my cat is happy.", category: "pet")