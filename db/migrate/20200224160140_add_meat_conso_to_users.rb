class AddMeatConsoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :meat_conso, :integer
  end
end
