class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :home_address
    end
  end
end

