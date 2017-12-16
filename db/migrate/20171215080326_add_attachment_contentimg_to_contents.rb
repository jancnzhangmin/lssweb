class AddAttachmentContentimgToContents < ActiveRecord::Migration
  def self.up
    change_table :contents do |t|
      t.attachment :contentimg
    end
  end

  def self.down
    remove_attachment :contents, :contentimg
  end
end
