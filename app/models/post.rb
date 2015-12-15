class Post < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :songs
    has_many :comments

	acts_as_commentable 
	acts_as_votable

	#mount_uploader :content, AvatarUploader


	validates_presence_of :content
 	validates_presence_of :user


 def self.post_song(post)
   @post_songs = post.songs
  
 end


end
