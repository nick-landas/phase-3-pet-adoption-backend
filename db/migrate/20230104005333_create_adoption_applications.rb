class CreateAdoptionApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :adoption_applications do |t|
      t.string :date
      t.boolean :accepted
      t.integer :pet_id
      t.integer :owner_id
    end
  end
end
