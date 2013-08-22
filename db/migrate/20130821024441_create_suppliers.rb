class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.boolean :primary
      t.boolean :secondary
      t.string :name

      t.timestamps
    end
  end
end
