class AddAttachmentMyimageToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :myimage
    end
  end

  def self.down
    remove_attachment :pins, :myimage
  end
end
