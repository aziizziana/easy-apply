class AddAttachmentUceCertificateToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :uce_certificate
    end
  end

  def self.down
    drop_attached_file :users, :uce_certificate
  end
end
