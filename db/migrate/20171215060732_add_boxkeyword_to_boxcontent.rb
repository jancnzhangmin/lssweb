class AddBoxkeywordToBoxcontent < ActiveRecord::Migration[5.0]
  def change
    add_column :boxcontents, :boxkeyword_id, :integer
  end
end
