class StaticPagesController < ApplicationController
  def home
          if signed_in?
              @micropost  = current_user.microposts.build if signed_in?
              @feed_items = current_user.feed
          end
  end

  def help
  end

  def about
          flash[:notice] = "Testing the flash"
  end
end
