Restaurant.destroy_all


20.times do
  r = Restaurant.create!(name: Faker::Hipster.word,
                         address: Faker::Address.street_address,
                         description: Faker::Dessert.variety,
                         chef: Faker::Name.name_with_middle,
                         stars: rand(1..5))
  puts "Created #{r.name}"
end
