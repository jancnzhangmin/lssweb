class CreateBoxkeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :boxkeywords do |t|
      t.string :keyword
      t.string :name

      t.timestamps
    end
  end
end
