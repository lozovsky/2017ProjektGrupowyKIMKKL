class CreateLines < ActiveRecord::Migration[5.1]
  def change
    create_table :lines do |t|
      t.string :line_name

      t.timestamps
    end
    add_index :lines, :line_name
  end
end
