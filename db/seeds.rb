# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  Monk.create(name: Faker::Name.name, title: "Bishop", location: Faker::Address.city, password: "Saint #{Faker::Name.first_name}")
end

200.times do
  monk = Monk.order("RANDOM()").limit(1).first
  # One third chance of long post
  content = rand(3) > 1 ? Faker::Lorem.paragraphs(number: rand(4) + 1) : Faker::Lorem.sentences(number: rand(3) + 1)
  monk.posts.create(content: content.join("\n"))
end