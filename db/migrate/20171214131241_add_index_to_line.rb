class AddIndexToLine < ActiveRecord::Migration[5.1]
  def change
  	add_index :lines, :line_name
  end
end
