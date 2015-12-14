class CommentsController < ApplicationController

skip_before_filter  :verify_authenticity_token

def get_user
   @user = User.find(params[:user_id])
 end


 def index
   


 end 



end