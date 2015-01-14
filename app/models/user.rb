class User < ActiveRecord::Base
  has_many  :tweets
  has_many :following_relationships,  class_name:  "Relationship",
                                   foreign_key: "follower_id",
                                   dependent:   :destroy
  has_many :follower_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
  has_many :following, through: :following_relationships,  source: :followed
  has_many :followers, through: :follower_relationships, source: :follower

end