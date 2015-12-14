class Song < ActiveRecord::Base
	has_and_belongs_to_many :posts
	
	validates_presence_of :post


	 def self.songposts(song)
      @posts = song.posts
  end

    def self.addpost(post,song)
    song.posts << post
  end 
end
