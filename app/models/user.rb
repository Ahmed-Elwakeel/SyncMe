class User < ActiveRecord::Base
 

 validates_presence_of :user_name, uniqueness: true

  acts_as_voter
  acts_as_follower
  acts_as_followable
  has_many :posts
  has_many :comments

  #mount_uploader :avatar, AvatarUploader

  
 
end