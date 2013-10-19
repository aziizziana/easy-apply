class Student < ActiveRecord::Base
   attr_accessible :firstname, :lastname, :username, :password, :confirm_password
   validates :firstname, :presence => true, :message => 'Fields cant be empty'
end
