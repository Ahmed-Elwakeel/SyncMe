class FollowsController < ApplicationController
  
skip_before_filter :verify_authenticity_token


def current_user
   @user = User.find(params[:user_id])
end

def get_followable
   @user = User.find(params[:follow][:f_id])
end

  def index
   @follow = current_user.followers
   render json: @follow

  end

  def create
    @follow=current_user.follow(get_followable)
       render json: @follow
  end

  def destroy
    @follow = Follow.find(params[:id])
    current_user.stop_following(get_followable)
  end

private
   def follow_params
      params.require(:follow).permit(:followable_id , :user_id, :follower_id, :f_id)
   end

end