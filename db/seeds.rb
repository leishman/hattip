# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times do
  first_name = Faker::Name.first_name
  User.create(
    email: Faker::Internet.email,
    first_name: first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password",
    stage_name: first_name,
    twitter_handle: Faker::Lorem.word,
    verified: false,
    tagline: Faker::Lorem.sentence,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country.slice(0,15),
    story: Faker::Lorem.paragraph,
    featured_youtube_url: urls.sample,
    profile_image_url: profile_image_urls.sample
    )
end