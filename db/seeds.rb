# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Suppression des artciles"
Article.destroy_all
puts "création des articles"

10.times do
  article = Article.new(
    title: Faker::Books::Dune.title,
    content: Faker::Books::Dune.quote
   )
  article.save!
end
