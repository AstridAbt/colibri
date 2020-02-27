class RenameColumnCarboneInUser < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :carbone_print, :foot_print
  end
end
