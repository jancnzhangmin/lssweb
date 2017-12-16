class AddAttachmentSucaiimgToSucais < ActiveRecord::Migration
  def self.up
    change_table :sucais do |t|
      t.attachment :sucaiimg
    end
  end

  def self.down
    remove_attachment :sucais, :sucaiimg
  end
end
