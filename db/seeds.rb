Hope.destroy_all
Dream.destroy_all
User.destroy_all
Category.destroy_all

####################### User ######################
## User instances must be created first because Hope and Dream instances depend on them
## Hope and Dream instances can't exist without being tied to a user first
user_1 = User.create(name: "isabel", email_address: "isabel@example.com", password: "123")
user_2 = User.create(name: "fig", email_address: "fig@example.com", password: "123")
user_3 = User.create(name: "lulu", email_address: "lulu@example.com", password: "123")

####################### Category ######################
Category.create(title: "Personal 🍃")
Category.create(title: "Love 💖")
Category.create(title: "Career 💼")
Category.create(title: "Friendship 🤗")
Category.create(title: "Pets 🐶")
Category.create(title: "Family 💙")
Category.create(title: "Hobby 🎨")
Category.create(title: "Health 🏥")
Category.create(title: "Fitness 💪🏼")
Category.create(title: "Financial 💸")
Category.create(title: "The World 🌏")

####################### Hope ######################
hope_1 = user_1.hopes.create(title: "My first job as a software engineer", description: "I hope I can get an awesome job after graduating from Flatiron School.", category_id: Category.all.sample.id, date: Faker::Date.backward(days: 30))

hope_2 = Hope.create(title: "Coronavirus pandemic", description: "I hope the Coronavirus pandemic will end soon.", category_id: Category.all.sample.id, user_id: User.all.sample.id, date: Faker::Date.backward(days: 30))

hope_3 = Hope.create(title: "Cat happiness", description: "I hope that my cat is happy.", category_id: Category.all.sample.id, user_id: User.all.sample.id, date: Faker::Date.backward(days: 30))

####################### Dream ######################
# dream_1 = Dream.create(title: "The one where I was flying", description: "I flew across the ocean.", duration: "57 minutes", user_id: user_3.id)
# dream_2 = Dream.create(title: "I was in a forest", description: "I was a deer in a beautiful forest.", duration: "32 minutes", user_id: user_1.id)
# dream_3 = Dream.create(title: "My cats were huge", description: "They were the size of mammoths.", duration: "1 hour, 17 minutes", user_id: user_2.id)