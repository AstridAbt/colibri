class AddOilConsoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :oil_conso, :integer
  end
end
