class UserApp < ActiveRecord::Base
  
  # Associating UserApp model to User model
  belongs_to :user

  #Application form's accessible attributes
  attr_accessible :course_one, :course_two, :course_three, :ple_certificate, :uce_certificate, :uace_certificate

  #PLE, UCE , UACE file attachments to the UserApp Model
  has_attached_file :ple_certificate, :styles => {:medium => "300 * 300>"}
  has_attached_file :uce_certificate, :styles => {:medium => "300 * 300>"}
  has_attached_file :uace_certificate,:styles => {:medium => "300 * 300>"}

  #validations
  validates :course_one, presence: true , uniqueness: true
  validates :course_two, presence: true , uniqueness: true
  validates :course_three, presence: true , uniqueness: true
  
end
