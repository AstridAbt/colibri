class CreateCarbonePrints < ActiveRecord::Migration[6.0]
  def change
    create_table :carbone_prints do |t|
      t.integer :carbone_print_total
      t.references :user, null: false, foreign_key: true
      t.references :quest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
