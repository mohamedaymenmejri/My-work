class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.string :subject_id
      t.string :string
      t.string :strenghts
      t.string :weaknesses
      t.string :recommandation
      t.integer :rating

      t.timestamps
    end
    add_index :feedbacks, [:user_id, :subject_id :created_at]
  end
end
