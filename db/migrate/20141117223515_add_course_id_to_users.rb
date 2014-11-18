class AddCourseIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :course_id, :string
  end
end
