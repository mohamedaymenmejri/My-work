class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :mark
      t.integer :user_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
