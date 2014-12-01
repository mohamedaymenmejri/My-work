class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  def show
        @user = User.find(params[:id])
        @microposts = @user.microposts
  end
  def create
       secure_params = params.require(:user).permit(:name, :StudentID, :course_id, :email, 
                                  :password, :password_confirmation)
        @user = User.new(secure_params)
        if @user.save
           # Handle a successful save.
            sign_in @user       #  NEW LINE
            flash[:success] = "Welcome to the Sample App!"    # NEW LINE
            redirect_to @user   # NEW LINE
        else
            # Handle an unsuccessful save.   
            render 'new'  
        end
  end
end
