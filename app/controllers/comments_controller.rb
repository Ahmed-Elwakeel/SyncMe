class CommentsController < ApplicationController

skip_before_filter  :verify_authenticity_token
 before_action :get_post
  before_action :get_user
  
def get_user
    @user = User.find(params[:user_id])
end  
def get_post
   @post = Post.find_by_id(params[:post_id])
 end
#@post = Post(params[:post_id])

 def index
   @comments = @post.comments
   render json: @comments
 end 

 def show
   @comments = @post.comments.find(params[:id])
   render json: @comments
 end 

 def create
    @comment = @post.comments.new(comment_params)
    @comment.commentable_id=@post.id
    @comment.user_id=@user.id
 if @comment.save
       # format.html { redirect_to [@user ,@post] , notice: 'Post was successfully created.' }
         render json: @comment
        #format.json { render :show, status: :created, location: @post }
      else
        render json: @comment.errors
       # format.html { render :new }
        #format.json { render json: @post.errors, status: :unprocessable_entity }
       #end
      end
   end
  

  private
   def comment_params
      params.require(:comment).permit(:comment ,:title, :commentable_id, :user_id)
   end

end