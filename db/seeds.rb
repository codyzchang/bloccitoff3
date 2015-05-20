 require 'faker'
 
 # Create Posts
 50.times do
   Item.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
 end
items = Item.all
 

 puts "Seed finished"
puts "#{Item.count} posts created"
