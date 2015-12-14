class PostsController < ApplicationController

skip_before_filter  :verify_authenticity_token

 def index
 	@posts = Post.all
 	respond_to do |format|
 	format.json {render json: @posts, status:200}
 	format.xml {render xml: @posts, status:200}
  end
 end

 def show
   @post = Post.find(params[:id])
 
   render json: @post
   #render xml: @post
 end

 def edit
    @post = Post.find(params[:id])
 end

 def create
    @post = Post.new(@post_params)
    if @post.save
    	render json: @post, status: 201, location:@post
    end
 end

 def postsong
   @post = Post.find(params[:id])
   @post.songs

 private
   def post_params
      params.require(:post).permit(:content)
   end


end