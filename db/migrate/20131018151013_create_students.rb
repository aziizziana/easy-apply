class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :firstname
    	t.string :lastname
    	t.string :username
    	t.string :password
    	t.string :confirm_password
    	t.timestamps
    end
  end
end
