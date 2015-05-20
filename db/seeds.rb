 require 'faker'
 
5.times do
   user = User.new(
     name:     Faker::Name.name,
     email:    Faker::Internet.email,
     password: Faker::Lorem.characters(10)
   )
   user.skip_confirmation!
   user.save!
 end
 users = User.all

# Create Items
 50.times do
   Item.create!(
     user:   users.sample,
     title:  Faker::Lorem.sentence,

   )
 end
items = Item.all

 user = User.first
 user.skip_reconfirmation!
 user.update_attributes!(
   email: 'james@sharklasers.com',
   password: 'helloworld'
 )

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} posts created"
