class CreateItemstoragelocations < ActiveRecord::Migration
  def change
    create_table :itemstoragelocations do |t|
      t.references :item, index: true
      t.references :storage_location, index: true

      t.timestamps
    end
  end
end
