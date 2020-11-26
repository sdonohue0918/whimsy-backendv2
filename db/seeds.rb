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

10.times do
    Eisel.create(name: Faker::Artist.name, genre: Faker::Name.name, user_id: User.all.sample.id)
end
