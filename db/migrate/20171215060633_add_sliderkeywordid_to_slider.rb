class AddSliderkeywordidToSlider < ActiveRecord::Migration[5.0]
  def change
    add_column :sliders, :sliderkeyword_id, :integer
  end
end
