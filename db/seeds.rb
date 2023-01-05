puts "🌱Seeding..."

AdoptionApplication.destroy_all
Owner.destroy_all
Pet.destroy_all

10.times do
  Owner.create!(
    first_name: Faker::Name.unique.first_name,
    last_name: Faker::Name.unique.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
    home_address: Faker::Address.full_address
  )

  Pet.create!(
    species: Faker::Creature::Animal.name,
    color: Faker::Color.color_name,
    weight: Faker::Number.between(from: 1, to: 100),
    house_broken: Faker::Boolean.boolean,
    name: Faker::Name.unique.neutral_first_name,
    personality: Faker::Adjective.positive
  )
end

100.times do
  AdoptionApplication.create!(
    accepted: false,
    owner_id: Owner.ids.sample,
    pet_id: Pet.ids.sample,
    date: Faker::Date.between(from: '2021-01-01', to: '2023-01-02')
  )
end

puts 'Seeding completed 🧑‍🌾'