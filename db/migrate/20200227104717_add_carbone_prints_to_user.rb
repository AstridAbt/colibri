class AddCarbonePrintsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :carbone_print, :integer, default: 1200
  end
end
