# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating false journeys'
4.times do
  journey = Journey.new(
    destination_type: ['ville', 'campagne', 'mer'].sample,
    people_count: (0..6).to_a.sample
  )
  journey.save!
end
puts 'Finished!'
