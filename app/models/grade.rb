class Grade < ActiveRecord::Base
	   belongs_to :user         
       belongs_to :subject   
       validates :user_id, presence: true
       validates :micropost_id, presence: true
       validates :mark, presence: true
end
