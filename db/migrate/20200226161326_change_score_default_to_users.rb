class ChangeScoreDefaultToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :score, 0
  end
end
