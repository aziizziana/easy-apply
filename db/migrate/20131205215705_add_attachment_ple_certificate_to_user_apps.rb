class AddAttachmentPleCertificateToUserApps < ActiveRecord::Migration
  def self.up
    change_table :user_apps do |t|
      t.attachment :ple_certificate
    end
  end

  def self.down
    drop_attached_file :user_apps, :ple_certificate
  end
end
