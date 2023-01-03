# frozen_string_literal: true

# active record class for the pets table, see app/models/pet.rb
class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :species
      t.string :color
      t.integer :weight
      t.boolean :house_broken
      t.string :name
      t.string :personality
      t.integer :owner_id
    end
  end
end
