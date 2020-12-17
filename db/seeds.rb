# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'


Eisel.destroy_all
# Subscriber.destroy_all
User.destroy_all

5.times do 
    User.create(username: Faker::Name.name, email: Faker::Internet.email, password: 'secret')


end

1.times do
    Eisel.create(name: Faker::Artist.name, genre: Faker::Name.name, user_id: User.all.sample.id, imagefile: 'https://www.pixelstalk.net%2Fwp-content%2Fuploads%2F2016%2F10%2FWallpapers-Doodle-HD.jpg&f=1&nofb=1')
end



