class AddCourseTwoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :course_two, :string
  end
end
