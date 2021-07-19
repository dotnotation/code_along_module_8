class User < ActiveRecord::Base
    #aliased association
    has_many :authored_posts, 
            :class_name => "Post", 
            :foreign_key => :author_id

    has_many :comments 
    has_many :commented_posts, :through => :comments, :source => :post
    #user has both posts that they authored and posts that they commented on which is why aliasing is important
end