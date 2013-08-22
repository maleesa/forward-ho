class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user_id, index: true
      t.references :storage_location_id, index: true
      t.text :description
      t.datetime :checked_date

      t.timestamps
    end
  end
end
