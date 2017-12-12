class CreateDistances < ActiveRecord::Migration[5.1]
  def change
    create_table :distances do |t|
      t.integer :from_stop_id
      t.integer :to_stop_id
      t.integer :travel_time

      t.timestamps
    end
    add_index :distances, :from_stop_id
    add_index :distances, :to_stop_id
    add_index :distances, [:from_stop_id, :to_stop_id], unique: true
  end
end
