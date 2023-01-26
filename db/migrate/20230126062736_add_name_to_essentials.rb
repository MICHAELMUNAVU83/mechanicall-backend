class AddNameToEssentials < ActiveRecord::Migration[7.0]
  def change
    add_column :essentials, :name, :string
  end
end
