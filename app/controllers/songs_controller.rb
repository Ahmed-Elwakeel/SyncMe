class SongsController < ApplicationController

skip_before_filter  :verify_authenticity_token

def index
 	@songs = Song.all
  @songs.each do |song|
    @post = Post.find(song.post_id)
 	respond_to do |format|
 	format.json {render json: @post, status:200}
 	#format.xml {render xml: @songs, status:200}
   end
  end
 end

def show
   @song = Song.find(params[:id])
   @post = Post.find(@song.post_id)
   #render json: @post
   render json: @post
 end

 
 
end