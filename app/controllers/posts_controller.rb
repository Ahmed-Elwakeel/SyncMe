class PostsController < ApplicationController

skip_before_filter  :verify_authenticity_token
before_action :get_user

 def get_user
   @user = User.find(params[:user_id])
 end
 
 def index
 	@posts = @user.posts
 	respond_to do |format|
 	format.json {render json: @posts, status:200}
 	format.xml {render xml: @posts, status:200}
  end
 end

 def show
   @post = @user.posts.find(params[:id])
 
   render json: @post
   #render xml: @post
 end


 def create
    @post = @user.posts.new(post_params)
    @post.user_id=@user.id
    #respond_to do |format|
      if @post.save
       # format.html { redirect_to [@user ,@post] , notice: 'Post was successfully created.' }
         render json: @post
        #format.json { render :show, status: :created, location: @post }
      else
        render json: @post.errors
       # format.html { render :new }
        #format.json { render json: @post.errors, status: :unprocessable_entity }
       #end
      end
 end



 private
   def post_params
      params.require(:post).permit(:content)
   end


end