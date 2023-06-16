# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require 'faker'
stories =  [
  {content: "wechat devtool is so buggy.", author: "zora"},
  {content: "there are so many versions of javascript.", author: "zora"},
]

# stories.each do |story|
#   Story.create(story)
# end

Story.create(stories)

Story.all.each do |story|
  (1..3).to_a.sample.times do
    Comment.create(
      name: Faker::TvShows::GameOfThrones.character,
      content: Faker::TvShows::GameOfThrones.quote,
      story: story
    )
  end
end
