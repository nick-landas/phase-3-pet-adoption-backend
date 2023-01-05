# frozen_string_literal: true

# class to manage adoption applications in ar table
class AdoptionApplication < ActiveRecord::Base
  belongs_to :owner
  belongs_to :pet

  def information
    {
      id: id,
      date: date,
      owner_name: owner.full_name,
      owner_id: owner.id,
      home_address: owner.home_address,
      phone_number: owner.phone_number,
      pet_name: pet.name,
      pet_id: pet.id,
      accepted: accepted
    }
  end

  def approve
    return unless pet.owner_id.nil?

    self.accepted = true
    save
  end

  def adopt
    return unless accepted

    pet = Pet.find(pet_id)
    pet.owner_id = owner_id
    pet.save
  end
end
