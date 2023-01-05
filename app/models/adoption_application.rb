# frozen_string_literal: true

# class to manage adoption applications in ar table
class AdoptionApplication < ActiveRecord::Base
  belongs_to :owner
  belongs_to :pet

  def approve
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
