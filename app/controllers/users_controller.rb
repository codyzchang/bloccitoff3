 class UsersController < ApplicationController
   before_action :authenticate_user!
   
  def index
    @users = User.top_rated.paginate(page: params[:page], per_page: 10)
  end
  
  def show
    @user = User.find(params[:id])
    @items = @user.items

  end
 
   def update
     if current_user.update_attributes(user_params)
       flash.now[:notice] = "User information updated"
       redirect_to edit_user_registration_path
     else
       flash.now[:error] = "Invalid user information"
       redirect_to edit_user_registration_path
     end
   end
 
   private
 
   def user_params
     params.require(:user).permit(:name)
   end
 end