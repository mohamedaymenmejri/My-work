module SessionsHelper

 
	  def signed_in?
      logger.info "signed_in"
        !current_user.nil?

      end

      def sign_in(user)
        cookies.permanent[:remember_token] = user.remember_token
        self.current_user = user   # NEW LINE
      end

      # NEW SETTER
      def current_user=(user)
        logger.info "user setter"
        @current_user = user
      end

      # NEW GETTER
      def current_user
        logger.info "user getter"
        if @current_user.nil?
           @current_user = 
               User.find_by_remember_token(cookies[:remember_token]) 
        end
        @current_user
      end

      def sign_out
        logger.info "signed_out"
        cookies.delete(:remember_token)
        self.current_user = nil
      end

      def signed_in_user
        unless signed_in?
          flash[:notice] = "Please sign in"
          redirect_to signin_url
        end
      end 

      def current_user?(user)
        user == current_user
      end
end

