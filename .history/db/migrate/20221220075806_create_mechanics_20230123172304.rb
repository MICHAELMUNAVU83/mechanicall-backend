class CreateMechanics < ActiveRecord::Migration[7.0]
  def change
    create_table :mechanics do |t|
      t.string :name
      t.string :phone_number
      t.string :exact_location
      t.string :county
      t.string :description
      t.integer
      t.string :email
      t.string :distance
      t.string :logo

      t.timestamps
    end
  end
end
