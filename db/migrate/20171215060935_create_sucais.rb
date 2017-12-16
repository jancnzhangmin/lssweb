class CreateSucais < ActiveRecord::Migration[5.0]
  def change
    create_table :sucais do |t|

      t.timestamps
    end
  end
end
