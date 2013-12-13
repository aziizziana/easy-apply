class AddAttachmentUceCertificateToUserApps < ActiveRecord::Migration
  def self.up
    change_table :user_apps do |t|
      t.attachment :uce_certificate
    end
  end

  def self.down
    drop_attached_file :user_apps, :uce_certificate
  end
end
