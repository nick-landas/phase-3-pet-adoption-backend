puts "🌱Seeding..."

AdoptionApplication.destroy_all
Owner.destroy_all
Pet.destroy_all

10.times do
  species = Faker::Creature::Animal.name
  Pet.create!(
    species: species,
    color: Faker::Color.color_name,
    weight: Faker::Number.between(from: 1, to: 100),
    house_broken: Faker::Boolean.boolean,
    name: Faker::Name.unique.neutral_first_name,
    personality: Faker::Adjective.positive,
    image: Faker::LoremFlickr.unique.image(size: '320x300', search_terms: [species.to_s, 'animal'], match_all: true)
  )
end

puts 'Seeding completed 🧑‍🌾'