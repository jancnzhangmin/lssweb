class Content < ApplicationRecord
  belongs_to :contentkeyword
  has_attached_file :contentimg, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :contentimg
end
