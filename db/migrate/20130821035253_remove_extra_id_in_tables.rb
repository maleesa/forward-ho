class RemoveExtraIdInTables < ActiveRecord::Migration
  def change
  	rename_column :tasks, :user_id_id, :user_id
  	rename_column :tasks, :storage_location_id_id, :storage_location_id
    rename_column :item_suppliers, :supplier_id_id, :supplier_id
    rename_column :items, :user_id_id, :user_id
  end
end
