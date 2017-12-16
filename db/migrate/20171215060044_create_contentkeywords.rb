class CreateContentkeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :contentkeywords do |t|
      t.string :keyword
      t.string :name

      t.timestamps
    end
  end
end
