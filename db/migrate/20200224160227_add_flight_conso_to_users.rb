class AddFlightConsoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :flight_conso, :integer
  end
end
