Hope.destroy_all
Dream.destroy_all
User.destroy_all

####################### User ######################
## User instances must be created first because Hope and Dream instances depend on them
## Hope and Dream instances can't exist without being tied to a user first
user_1 = User.create(name: "isabel")
user_2 = User.create(name: "fig")
user_3 = User.create(name: "lulu")

####################### Hope ######################
hope_1 = Hope.create(title: "My first job as a software engineer", description: "I hope I can get an awesome job after graduating from Flatiron School.", category: "career", user_id: user_1.id)
hope_2 = Hope.create(title: "Coronavirus pandemic", description: "I hope the Coronavirus pandemic will end soon.", category: "world news", user_id: user_2.id)
hope_3 = Hope.create(title: "Cat happiness", description: "I hope that my cat is happy.", category: "pet", user_id: user_3.id)

####################### Dream ######################
dream_1 = Dream.create(title: "The one where I was flying", description: "I flew across the ocean.", duration: "57 minutes", user_id: user_3.id)
dream_2 = Dream.create(title: "I was in a forest", description: "I was a deer in a beautiful forest.", duration: "32 minutes", user_id: user_1.id)
dream_3 = Dream.create(title: "My cats were huge", description: "They were the size of mammoths.", duration: "1 hour, 17 minutes", user_id: user_2.id)