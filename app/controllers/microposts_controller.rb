class MicropostsController < ApplicationController
before_filter :signed_in_user, only: [:create, :destroy]
      def create
        secure_post = params.require(:micropost).permit(:content)
        @micropost = current_user.microposts.build(secure_post) 
        if @micropost.save
          flash[:success] = "Micropost created!"
          redirect_to root_url
        else
          @feed_items = [] 
          render 'static_pages/home'
        end
      end

      def destroy
        @micropost.destroy
        redirect_to root_url
      end

      private def correct_user
          @micropost = current_user.microposts.find_by_id(params[:id])
          redirect_to root_url if @micropost.nil?
        end
end