# frozen_string_literal: true

# owner of a pet, associated via activerecord for sinatra
class Owner < ActiveRecord::Base
  has_many :adoption_applications
  has_many :pets

  def full_name
    "#{first_name} #{last_name}"
  end

  def information
    {
      first_name: first_name,
      last_name: last_name,
      home_address: home_address,
      phone_number: phone_number,
      pets: pets,
      id: id
    }
  end
end
