class CreateTimetables < ActiveRecord::Migration[5.1]
  def change
    create_table :timetables do |t|
      t.integer :line_id
      t.time :departure_time

      t.timestamps
    end
    add_index :timetables, :line_id
  end
end
