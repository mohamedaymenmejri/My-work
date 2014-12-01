class FeedbacksController < ApplicationController
 before_filter :signed_in_user, only: [:create, :destroy]
 before_filter :correct_user, only: :destroy
  def index
    @feedbacks = current_user.feedbacks
  end

  def new
    @feedbacks = Feedback.new
  end

  def destroy
        @feedback.destroy
        redirect_to root_url
      end

  def create

    secure_params = params.require(:feedback).                                         
                      permit(:user_id, :weaknesses, :strenghts,:recommandation,:subject_id,:rating)
    @feedback = Feedback.new(secure_params)
    if Subject.find(params[:feedback][:subject_id]) and 
              @feedback.save
        redirect_to action: 'index', notice: 'feedback was successfully created.'
    else
        @feed_items=[]
        render action: "new" 
    end
  end

  private 
      def correct_user
          @feedback = current_user.feedbacks.find_by_id(params[:id])
          redirect_to root_url if @feedback.nil?
        end


end