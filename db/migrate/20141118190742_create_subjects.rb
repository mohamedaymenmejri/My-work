class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :code
      t.string :name
      t.string :course_id
      t.string :description
      t.integer :ca_percent
      t.integer :final_exam_percent

      t.timestamps
    end
  end
end
