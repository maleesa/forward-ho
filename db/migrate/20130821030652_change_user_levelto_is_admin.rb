class ChangeUserLeveltoIsAdmin < ActiveRecord::Migration
  def change
   rename_column :users, :user_level, :is_admin
  end
end
