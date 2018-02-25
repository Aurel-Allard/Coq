require 'date'
require 'faker'

puts 'Creating false journeys'

5.times do
  journey = Journey.new(
    origin: ['Paris', 'Lille', 'Bordeaux'].sample,
    people_count: (1..6).to_a.sample.to_s + ' trotteur(s)',
    destination_type: ['Ville', 'Campagne', 'Mer'].sample
  )

  all_details = Detail.new(
    is_a_surprise: ['true', 'false'].sample,
    date: Date.new(2018,2,3),
    housing_type: ['Nid douillet', 'Chic' ].sample,
    activity_type: ['Aucune', 'Sport', 'Gastronomie', 'Culture' ].sample,
    points_of_attention: 'n.a.',
    price_cents: 500
    )

  all_users = User.new(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    gender: ['M.', 'Mme.'].sample,
    address: Faker::Address.street_address,
    birth_date: Faker::Date.forward(25),
    phone: '06 07 08 09 10',
    email: Faker::Internet.email,
    contact: ['true', 'false'].sample,
    password: '123456'
    )

  journey.detail = all_details
  journey.user = all_users
  all_details.save!
  all_users.save!
  journey.save!
end

user_journey = Journey.new(
    origin: ['Paris', 'Lille', 'Bordeaux'].sample,
    people_count: (1..6).to_a.sample.to_s + ' trotteur(s)',
    destination_type: ['Ville', 'Campagne', 'Mer'].sample
  )

user_details = Detail.new(
    is_a_surprise: ['true', 'false'].sample,
    date: Date.new(2018,2,3),
    housing_type: ['Nid douillet', 'Chic' ].sample,
    activity_type: ['Aucune', 'Sport', 'Gastronomie', 'Culture' ].sample,
    points_of_attention: 'n.a.',
    price_cents: 100
    )

user_test = User.new(
    name: "Jean-Luc",
    surname: "Pinchon",
    gender: "M.",
    address: "16 rue de la Boustifaille",
    birth_date: Faker::Date.forward(25),
    phone: '06 07 08 09 10',
    email: "jean-luc@grosfaker.com",
    contact: "true",
    password: '123456',
    admin: true
  )

# admin_user.admin = true
user_journey.detail = user_details
user_journey.user = user_test
user_details.save!
user_test.save!
user_journey.save!

puts 'Finished!'
