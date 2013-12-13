class AddAttachmentUaceCertificateToUserApps < ActiveRecord::Migration
  def self.up
    change_table :user_apps do |t|
      t.attachment :uace_certificate
    end
  end

  def self.down
    drop_attached_file :user_apps, :uace_certificate
  end
end
