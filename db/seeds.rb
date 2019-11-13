# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

5.times do
  restaurants = Restaurant.create(name: Faker::Name.first_name, address: Faker::Address.street_address, category: %w[chinese italian japanese french belgian].sample)
  ratings = Review.create(content: Faker::Lorem.sentence(word_count: 10), rating: [0, 1, 2, 3, 4, 5].sample, restaurant: restaurants)
end

#   Character.create(name: 'Luke', movie: movies.first)
