class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  act_as_voter
  acts_as_follower
  acts_as_followable
  has_many :posts
  has_many :comments

  validates_presence_of :name

 
end
