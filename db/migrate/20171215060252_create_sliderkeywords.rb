class CreateSliderkeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :sliderkeywords do |t|
      t.string :keyword
      t.string :name

      t.timestamps
    end
  end
end
