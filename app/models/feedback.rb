class Feedback < ActiveRecord::Base
	  belongs_to :subject
	  belongs_to :user
  validates :subject_id, presence: true 
  validates :weaknesses, presence: true , length: {maximum: 200}
  validates :user_id, presence: true , length: { maximum: 50 }
  validates :strenghts, presence: true , length: {maximum: 200}
  validates :recommandation, presence: true , length: {maximum: 200}
  default_scope { order'feedbacks.created_at DESC' }
  #validates :rating, inclusion: { in: ['1', '2', '3', '4', '5']}
end
