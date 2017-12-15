# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.destroy_all
Category.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all

food_and_drink = Category.create!(name: "Food and Drink")
travel = Category.create!(name: "Travel")
running = Category.create!(name: "Running")
book_club = Category.create!(name: "Book club")
personal_development = Category.create!(name: "Personal Development")
coding = Category.create!(name: "Coding meet-ups")
watching_movie = Category.create!(name: "Watching Movies")
language_culture = Category.create!(name: "Language & Culture")

miriam = User.create!(email: "miriam@codaisseurbnb.com", password: "abcd123456")
robert = User.create!(email: "wouter@codaisseurbnb.com", password: "abcde1234")
tom = User.create!(email: "matt@codaisseurbnb.com", password: "abcdef1234")

event_1 = Event.create!(
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
  categories: [food_and_drink, language_culture]
)

event_2 = Event.create!(
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
  categories: [running, personal_development]
)

event_3 = Event.create!(
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
  categories: [watching_movie, personal_development]
)

event_4 = Event.create!(
  name: "Rooftop Movie Night",
  description: "Rooftop movie night screens from various locations in the Netherlands but is based on the Floor17 Rooftop terrace in Amsterdam.",
  location: "Utrecht",
  price: 30,
  capacity: 200,
  includes_food: true,
  includes_drinks: true,
  starts_at: DateTime.new(2018, 01, 31, 9, 35, 0),
  ends_at: DateTime.new(2018, 01, 31, 22, 30, 0),
  active: true,
  user: miriam,
  categories: [book_club, language_culture]
)

event_5 = Event.create!(
  name: "Adventure Travel",
  description: "Where to go on your next trip? So many choices, no? Well, the Adventure Travel Trade Association is out with its newest survey of adventure travel destinations.",
  location: "Amsterdam",
  price: 15,
  capacity: 40,
  includes_food: false,
  includes_drinks: false,
  starts_at: DateTime.new(2017, 10, 26, 9, 35, 0),
  ends_at: DateTime.new(2017, 10, 26, 22, 30, 0),
  active: false,
  user: robert,
  categories: [travel, personal_development]
)

event_6 = Event.create!(
  name: "Coding nerds meetups",
  description: "Find out what's happening in learn to code Meetup groups around the world and start meeting up with the ones near you.",
  location: "Rotterdam",
  price: 5,
  capacity: 100,
  includes_food: false,
  includes_drinks: true,
  starts_at: DateTime.new(2018, 03, 26, 9, 35, 0),
  ends_at: DateTime.new(2018, 03, 29, 22, 30, 0),
  active: true,
  user: tom,
  categories: [coding, language_culture]
)

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dp99fz03x/image/upload/v1513258056/the-color-run_icv5cy.jpg", event: event_2)

photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dp99fz03x/image/upload/v1513258015/MovieCl_vhcr5n.jpg", event: event_4)

photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dp99fz03x/image/upload/v1513257993/8e4ba663cf02c3398987aaa7f3fa703e--french-teacher-teaching-french_mmz1db.jpg", event: event_3)

photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dp99fz03x/image/upload/v1513257970/f4b8710334162be45d5966062c0eac4b--teacher-resources-classroom-resources_qj997o.jpg", event: event_3)

photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dp99fz03x/image/upload/v1513257886/324c82313201e77b77ad45246a136601_mwhg9x.jpg", event: event_4)

photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dp99fz03x/image/upload/v1513257755/PXlFCLap3kEuob9rLZbId7vo0zsbyrfT63NW4f-oWIfDV7TMZ0dVQGdBPO9oqXunn6k3ZTaMwqaqXi3oeaqK3uU_s0_wutly7.jpg", event: event_3)

photo7 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dp99fz03x/image/upload/v1513257688/720x368_code_club_ffj5v4.png", event: event_6)

photo8 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dp99fz03x/image/upload/v1513257665/running_d1lk7b.jpg", event: event_2)

photo9 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dp99fz03x/image/upload/v1513257594/FlipTrip-Travel-Meetup-VI_mgqvsf.png", event: event_5)

photo10 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dp99fz03x/image/upload/v1513257488/liverpool-food-and-drink_be7yt6.jpg", event: event_1)

photo11 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dp99fz03x/image/upload/v1513257568/PHX_foodtruck_jjbodi.jpg", event: event_1)

photo12 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dp99fz03x/image/upload/v1513257550/34_dou2rx.jpg", event: event_1)

Registration.create!(event: event_1, user: robert, status: true, guests_count: 2)
Registration.create!(event: event_3, user: miriam, status: false, guests_count: 3)
