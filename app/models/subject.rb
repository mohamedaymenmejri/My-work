class Subject < ActiveRecord::Base
	has_many :feedbacks
	has_and_belongs_to_many :courses
  validates :name, presence: true , length: {maximum: 50}
  #validates :feedback_id, presence: true 
  #validates :course_id, presence: true 
  validates :description, presence: true , length: { maximum: 500}
  validates :ca_percent, presence: true 
  validates :final_exam_percent, presence: true
end
