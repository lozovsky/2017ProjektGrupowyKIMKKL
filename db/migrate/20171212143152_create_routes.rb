class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.integer :line_id
      t.integer :distance_id
      t.integer :stop_number

      t.timestamps
    end
    add_index :routes, :line_id
    add_index :routes, [:line_id, :stop_number], unique: true
  end
end
