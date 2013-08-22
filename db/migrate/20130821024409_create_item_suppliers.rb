class CreateItemSuppliers < ActiveRecord::Migration
  def change
    create_table :item_suppliers do |t|
      t.references :item_id, index: true
      t.references :supplier_id, index: true

      t.timestamps
    end
  end
end
