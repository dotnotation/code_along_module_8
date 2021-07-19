class Post < ActiveRecord::Base
    belongs_to :author, :class_name => "User"
    #alias the user association as "author
    
    has_many :comments
    has_many :commentors, 
            :through => :comments, 
            :source => :commentor
end 