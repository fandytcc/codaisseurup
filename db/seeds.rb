# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
User.destroy_all

food_and_drink = Category.create!(name: "Food and Drink")
travel = Category.create!(name: "Travel")
running = Category.create!(name: "Running")
book_club = Category.create!(name: "Book club")
personal_development = Category.create!(name: "Personal Development")
coding = Category.create!(name: "Coding meet-ups")
wathcing_movies = Category.create!(name: "Watching Movies")
language_cultures = Category.create!(name: "Language & Culture")

miriam = User.create!(email: "miriam@codaisseurbnb.com", password: "abcd123456")
robert = User.create!(email: "wouter@codaisseurbnb.com", password: "abcde1234")
tom = User.create!(email: "matt@codaisseurbnb.com", password: "abcdef1234")

Event.create!(
  name: "Asian food festival",
  description: "The Asian Food Fest (AFF) was founded in 2010 by a diverse group of friends who wanted to spread their love of Asian food and culture through the city of Cincinnati.",
  location: "Rotterdam",
  price: 35,
  capacity: 200,
  includes_food: true,
  includes_drinks: false,
  starts_at: DateTime.new(2017, 12, 23, 9, 35, 0),
  ends_at: DateTime.new(2017, 12, 23, 22, 30, 0),
  active: true,
  user: miriam,
  categories: [running, food_and_drink]
)

Event.create!(
  name: "Amsterdam Marathon",
  description: "During these grey days, we like to think back to the sunny TCS Amsterdam Marathon What is your favourite running we... Lees meer. 150 dagen geleden · @ TCSAmsterdamMarathon. Only 3 months to go. Retweet if you feel excited!",
  location: "Amsterdam",
  price: 20,
  capacity: 300,
  includes_food: false,
  includes_drinks: true,
  starts_at: DateTime.new(2018, 03, 23, 10, 00, 0),
  ends_at: DateTime.new(2018, 03, 23, 12, 30, 0),
  active: true,
  user: robert,
  categories: [book_club, personal_development]
)

Event.create!(
  name: "Book Nerds",
  description: "The biggest guide to gigs, clubs, festivals and more. With lineups, venue details and entry times. Buy tickets from a trusted primary outlet.",
  location: "Utrecht",
  price: 5,
  capacity: 30,
  includes_food: true,
  includes_drinks: true,
  starts_at: DateTime.new(2017, 12, 31, 9, 35, 0),
  ends_at: DateTime.new(2017, 12, 31, 22, 30, 0),
  active: true,
  user: tom,
  categories: [book_club, personal_development]
)
