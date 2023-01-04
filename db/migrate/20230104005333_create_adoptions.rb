class CreateAdoptions < ActiveRecord::Migration[6.1]
  def change
    create_table :adoptions do |t|
      t.date :date
      t.integer :pet_id
      t.integer :owner_id
    end
  end
end
