class CreateQuests < ActiveRecord::Migration[6.0]
  def change
    create_table :quests do |t|
      t.string :title
      t.text :content
      t.integer :points
      t.integer :duration

      t.timestamps
    end
  end
end
