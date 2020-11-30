class User < ApplicationRecord
    has_many :eisels
    has_many :subscribers
    has_many :likes
    has_many :comments
    has_many :artworks

    

end