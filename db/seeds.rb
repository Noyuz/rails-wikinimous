require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying existing articles...'
Article.delete_all

puts 'Creating new articles...'
20.times do
  article = Article.new(
    title: Faker::TvShows::BreakingBad.episode,
    content: Faker::Quote.famous_last_words
  )
  article.save!
end
puts 'Done !'
