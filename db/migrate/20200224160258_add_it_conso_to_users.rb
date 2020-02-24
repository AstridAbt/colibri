class AddItConsoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :it_conso, :integer
  end
end
