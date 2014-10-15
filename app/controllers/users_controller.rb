class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  def show
        @user = User.find(params[:id])
  end
  def create
       secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
        @user = User.new(secure_params)
        if @user.save
           # Handle a successful save.
           flash[:success] = "Welcome to the Twitter App!"
           redirect_to @user
        else
            # Handle an unsuccessful save.   
            render 'new'  
        end
  end
end
