3.times do
    User.create(name: Faker::Name.name_with_middle, username: Faker::Internet.username, email: Faker::Internet.email, password: "password", total_tattoos: rand(1..50), 
        age_first_tattoo: rand(16..31), fav_tattoo: Faker::Games::Pokemon.name)
end

3.times do
    Artist.create(name: Faker::FunnyName.three_word_name , years_experience: rand(1..15), 
        price_hourly: rand(75..220), specializes_in: Faker::Creature::Animal.name)
end

5.times do
    Tattoo.create(image: Faker::Games::Zelda.character, size: ["small", "medium", "large"].sample, 
    color: ["red", "black and white", "blue", "purple"].sample, user_id: 1, artist_id: 1)
end

5.times do
    Tattoo.create(image: Faker::Games::Zelda.character, size: ["small", "medium", "large"].sample, 
    color: ["red", "black and white", "blue", "purple"].sample, user_id: 2, artist_id: 2)
end

5.times do
    Tattoo.create(image: Faker::Games::Zelda.character, size: ["small", "medium", "large"].sample, 
    color: ["red", "black and white", "blue", "purple"].sample, user_id: 3, artist_id: 3)
end

# 5.times do
#     Tattoo.create(image: Faker::Games::Zelda.character, size: ["small", "medium", "large"].sample, 
#     color: ["red", "black and white", "blue", "purple"].sample, 
#     artist_name: Faker::FunnyName.three_word_name, user_id: 1,)
# end

# 5.times do
#     Tattoo.create(image: Faker::Games::Zelda.character, size: ["small", "medium", "large"].sample, 
#     color: ["red", "black and white", "blue", "purple"].sample, 
#     artist_name: Faker::FunnyName.three_word_name, user_id: 2,)
# end

# 5.times do
#     Tattoo.create(image: Faker::Games::Zelda.character, size: ["small", "medium", "large"].sample, 
#     color: ["red", "black and white", "blue", "purple"].sample, 
#     artist_name: Faker::FunnyName.three_word_name, user_id: 3,)
# end