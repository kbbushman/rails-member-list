class AddAttachmentProfileImageToMembers < ActiveRecord::Migration
  def self.up
    change_table :members do |t|
      t.attachment :profile_image
    end
  end

  def self.down
    remove_attachment :members, :profile_image
  end
end
