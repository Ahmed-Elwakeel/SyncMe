class SongsController < ApplicationController

skip_before_filter  :verify_authenticity_token

def index
 	@songs = Song.all
 	respond_to do |format|
 	format.json {render json: @songs, status:200}
 	format.xml {render xml: @songs, status:200}
  end
 end

def show

   @song = Post.find(params[:id])
   @song.songposts(song)
   render xml: @song
   #render xml: @song
 end

 def songposts(song)
   # @song = Song.find(params[:id])
    for each @song.posts do
    render xml: @song
    end
  end

  def addpost(post)
  	@song = Song.find(params[:id])
    @song.posts << @post
  end  
end