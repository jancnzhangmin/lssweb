class AddTitleToSucai < ActiveRecord::Migration[5.0]
  def change
    add_column :sucais, :title, :string
  end
end
