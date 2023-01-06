puts "🌱Seeding..."

AdoptionApplication.destroy_all
Owner.destroy_all
Pet.destroy_all

10.times do
  Pet.create!(
    species: Faker::Creature::Animal.name,
    color: Faker::Color.color_name,
    weight: Faker::Number.between(from: 1, to: 100),
    house_broken: Faker::Boolean.boolean,
    name: Faker::Name.unique.neutral_first_name,
    personality: Faker::Adjective.positive
  )
end

puts 'Seeding completed 🧑‍🌾'