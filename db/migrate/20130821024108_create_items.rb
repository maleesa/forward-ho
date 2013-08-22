class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :user_id, index: true
      t.string :name
      t.float :current_amount
      t.float :min_amount
      t.float :max_amount
      t.float :purchase_amount
      t.text :notes
      t.string :unit_name
      t.float :unit_quantity

      t.timestamps
    end
  end
end
