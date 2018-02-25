require 'date'
require 'faker'

puts 'Creating false journeys'

10.times do
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

  all_clients = Client.new(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    gender: ['M.', 'Mme.'].sample,
    address: Faker::Address.street_address,
    birth_date: Faker::Date.forward(25),
    phone: '06 07 08 09 10',
    mail: Faker::Internet.email,
    contact: ['true', 'false'].sample
    )

  journey.detail = all_details
  journey.client = all_clients
  all_details.save!
  all_clients.save!
  journey.save!
end

admin = Admin.new(
  email: 'admin@admin.fr',
  password: '123456',
  )
admin.save!

puts 'Finished!'
