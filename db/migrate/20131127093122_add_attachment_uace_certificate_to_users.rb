class AddAttachmentUaceCertificateToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :uace_certificate
    end
  end

  def self.down
    drop_attached_file :users, :uace_certificate
  end
end
