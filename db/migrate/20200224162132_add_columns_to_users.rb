class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :title, :string
    add_column :users, :content, :text
    add_column :users, :points, :integer
    add_column :users, :duration, :integer
  end
end
