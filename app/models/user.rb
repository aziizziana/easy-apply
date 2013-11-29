class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  #Application form's accessible attributes
  attr_accessible :course_one, :course_two, :course_three, :ple_certificate, :uce_certificate, :uace_certificate
  
  #PLE, UCE , UACE file attachments to the User Model
  has_attached_file :ple_certificate, :styles => {:small => "150 * 150"}
  has_attached_file :uce_certificate, :styles => {:small => "150 * 150"}
  has_attached_file :uace_certificate,:styles => {:small => "150 * 150"}

  #Validations of file attachments
  #validates_attachment_presence
  #validates_attachment_content_type
  #validates_attachment_size
end
