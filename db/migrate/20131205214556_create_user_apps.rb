class CreateUserApps < ActiveRecord::Migration
  def change
    create_table :user_apps do |t|
    	
      t.integer :user_id
      t.string :course_one
      t.string :course_two
      t.string :course_three

      t.timestamps
    end
  end
end
