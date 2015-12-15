class UsersController < ApplicationController

skip_before_filter  :verify_authenticity_token


 def index
    @users=User.all

    render json: @users
 	end

 def show
   @user = User.find(params[:id])

   render json: @user
 end

 def create
 	@user = User.new(user_params)
    if @user.save
    	render json: @user
    else
        render json: @user.errors
    end
 end

 private
   def user_params
      params.require(:user).permit(:user_name , :email)
   end



end