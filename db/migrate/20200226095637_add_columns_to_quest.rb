class AddColumnsToQuest < ActiveRecord::Migration[6.0]
  def change
    add_column :quests, :content_2, :text
    add_column :quests, :content_3, :text
  end
end
