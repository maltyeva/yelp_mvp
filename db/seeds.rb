Restaurant.destroy_all


20.times do
  r = Restaurant.create!(name: Faker::Hipster.word,
                         address: Faker::Address.street_address,
                         description: Faker::Dessert.variety,
                         stars: rand(1..5))
  puts "Created #{r.name}"
end
