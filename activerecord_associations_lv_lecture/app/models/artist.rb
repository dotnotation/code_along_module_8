class Artist < ActiveRecord::Base
    has_many :songs

    validates :name, :presence => true
    validates :anme, :length => {:minimum => 5}
    
    validate :good_song
    after_create :email_people

    def good_song
        if self.name != "Taylor Swift"
            errors.add(:good_song, "must be made by Taytay")
        end
    end

    def email_people
        puts "I've emailed someone"
    end
end  