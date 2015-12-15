class FollowsController < ApplicationController
  
skip_before_filter :verify_authenticity_token


def current_user
   @user = User.find(params[:user_id])
end

  def create
    current_user.follow(followable)
  end

  def destroy
    current_user.stop_following(followable)
  end

private
   def follow_params
      params.require(:post).permit(:content , :user_id)
   end

end