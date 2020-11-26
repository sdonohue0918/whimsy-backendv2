class User < ApplicationRecord
    has_many :eisels
    has_many :subscribers
    has_many :likes
    has_many :comments

    def get_likes
        self.likes
    
    end

end