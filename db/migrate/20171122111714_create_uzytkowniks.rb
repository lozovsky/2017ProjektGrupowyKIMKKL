class CreateUzytkowniks < ActiveRecord::Migration[5.1]
  def up
    create_table :uzytkowniks do |t|
      t.string "imie", :limit => 20
      t.string "nazwisko", :limit => 50
      t.string "uzytkownik", :limit => 25
      t.string "email", :limit => 100, :default => "", :null => false
      t.string "password_digest"
      t.timestamps
    end
    add_index("uzytkowniks","uzytkownik")
  end

  def down
  	drop_table :uzytkowniks
  end
end
