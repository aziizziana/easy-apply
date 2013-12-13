class AddAttachmentPleCertificateToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :ple_certificate
    end
  end

  def self.down
    drop_attached_file :users, :ple_certificate
  end
end
