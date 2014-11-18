class AddStudentIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :StudentID, :string
  end
end
