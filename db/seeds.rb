puts "🌱Seeding..."

AdoptionApplication.destroy_all
Owner.destroy_all
Pet.destroy_all
Faker::UniqueGenerator.clear
100.times do
  species = Faker::Creature::Animal.name
  Pet.create!(
    species: species,
    color: Faker::Color.color_name,
    weight: Faker::Number.between(from: 1, to: 100),
    house_broken: Faker::Boolean.boolean,
    name: Faker::Name.neutral_first_name,
    personality: Faker::Adjective.positive,
    image: Faker::LoremFlickr.image(size: '320x300', search_terms: [species.to_s, 'animal'], match_all: true)
  )
end

puts 'Seeding completed 🧑‍🌾'