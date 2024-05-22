puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

10.times do
  restaurant = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address, category: ["chinese", "italian", "japanese", "french", "belgian"].sample )
  5.times do
    Review.create(restaurant_id: restaurant.id, content: Faker::Quote.famous_last_words, rating: rand(0..5))
  end
  puts "Created #{restaurant.name} and its reviews "
end
puts "Finished!"
