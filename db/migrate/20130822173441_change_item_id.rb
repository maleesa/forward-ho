class ChangeItemId < ActiveRecord::Migration
  def change
  	rename_column :item_suppliers, :item_id_id, :item_id
  end
end
