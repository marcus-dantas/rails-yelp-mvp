puts 'Cleaning DB'
Restaurant.destroy_all

puts 'creating new restaurants'
10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::Number.number(digits: 10),
    category: Restaurant::CATEGORY.sample
  )
  puts "Created #{restaurant.name} - #{restaurant.id}"
end
puts 'finished!'
