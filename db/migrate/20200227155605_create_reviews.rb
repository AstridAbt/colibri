class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :participation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
