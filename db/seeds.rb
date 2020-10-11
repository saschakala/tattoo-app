3.times do
    User.create(name: Faker::Name.name_with_middle, username: Faker::Internet.username, email: Faker::Internet.email, password: "password",total_tattoos: rand(1..50), 
        age_first_tattoo: rand(16..31), fav_tattoo: Faker::Games::Pokemon.name)
end

5.times do
    Tattoo.create(image: Faker::Games::Zelda.character, size: ["small", "medium", "large"].sample, 
    color: ["red", "black and white", "blue", "purple"].sample, 
    artist_name: Faker::FunnyName.three_word_name, user_id: 1,)
end

5.times do
    Tattoo.create(image: Faker::Games::Zelda.character, size: ["small", "medium", "large"].sample, 
    color: ["red", "black and white", "blue", "purple"].sample, 
    artist_name: Faker::FunnyName.three_word_name, user_id: 2,)
end

5.times do
    Tattoo.create(image: Faker::Games::Zelda.character, size: ["small", "medium", "large"].sample, 
    color: ["red", "black and white", "blue", "purple"].sample, 
    artist_name: Faker::FunnyName.three_word_name, user_id: 3,)
end