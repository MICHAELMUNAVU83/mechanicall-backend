class AddIconToEssentials < ActiveRecord::Migration[7.0]
  def change
    add_column :essentials, :icon, :string
  end
end
