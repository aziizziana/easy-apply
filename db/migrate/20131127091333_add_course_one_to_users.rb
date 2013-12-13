class AddCourseOneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :course_one, :string
  end
end
