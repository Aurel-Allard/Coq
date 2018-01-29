require 'date'

require 'faker'

puts 'Creating false journeys'
4.times do
  journey = Journey.new(
    origin: ['Paris', 'Lille', 'Bordeaux'].sample,
    people_count: (1..6).to_a.sample.to_s + ' trotteur(s)',
    destination_type: ['Ville', 'Campagne', 'Mer'].sample
  )

  all_details = Detail.new(
    is_a_surprise: ['true', 'false'].sample,
    date: Date.new(2018,2,3),
    housing_type: ['Chambre d\'hôte ou hôtel', 'Hôtel de charme' ].sample,
    activity_type: ['Aucune', 'Sport', 'Gastronomie', 'Culture' ].sample,
    points_of_attention: 'n.a.'
    )

  journey.detail = all_details
  all_details.save!
  journey.save!
end
puts 'Finished!'
