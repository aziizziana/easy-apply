class AddCourseThreeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :course_three, :string
  end
end
