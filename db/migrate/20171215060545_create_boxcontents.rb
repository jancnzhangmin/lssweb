class CreateBoxcontents < ActiveRecord::Migration[5.0]
  def change
    create_table :boxcontents do |t|
      t.text :content

      t.timestamps
    end
  end
end
