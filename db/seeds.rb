# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    :email => "fabian@gmail.com",
    :password => "123456",
    :password_confirmation => "123456"
)

User.create!(
    :email => "tom@gmail.com",
    :password => "123456",
    :password_confirmation => "123456"
)


User.create!(
    :email => "erik@gmail.com",
    :password => "123456",
    :password_confirmation => "123456"
)

User.create!(
    :email => "johan@gmail.com",
    :password => "123456",
    :password_confirmation => "123456"
)


User.create!(
    :email => "tim@gmail.com",
    :password => "123456",
    :password_confirmation => "123456"
)

post = Post.new(
    
    :caption => "beautiful scenery",
    :ispublic => 1,
    :user_id => User.first.id,
   
    
)
post.tag_list.add("nature", "vacation")
post.image.attach(io: File.open(Rails.root.join('app/assets/images/alberta.jpg')), filename:'alberta.jpg')
post.save!

post = Post.new(
    
    :caption => "nice dog",
    :ispublic => 1,
    :user_id => User.first.id,
   
    
)
post.tag_list.add("animal", "dog", "pet")
post.image.attach(io: File.open(Rails.root.join('app/assets/images/dog.jpg')), filename:'dog.jpg')
post.save!


post = Post.new(
    
    :caption => "yummy food",
    :ispublic => 1,
    :user_id => User.second.id
   
    
)
post.tag_list.add("food", "burger", "yummy")
post.image.attach(io: File.open(Rails.root.join('app/assets/images/hamburger.jpg')), filename:'hamburger.jpg')
post.save!


post = Post.new(
    
    :caption => "wow look at this",
    :ispublic => 1,
    :user_id => User.third.id
   
    
)
post.tag_list.add("nature", "autumn", "wow")
post.image.attach(io: File.open(Rails.root.join('app/assets/images/road.jpg')), filename:'road.jpg')
post.save!

post = Post.new(
    
    :caption => "look at my crazy snapshot",
    :ispublic => 0,
    :user_id => User.fourth.id
   
    
)
post.tag_list.add("animal", "seal", "water")
post.image.attach(io: File.open(Rails.root.join('app/assets/images/seal.jpg')), filename:'seal.jpg')
post.save!

post = Post.new(
    
    :caption => "fishy fish.",
    :ispublic => 0,
    :user_id => User.third.id
   
    
)
post.tag_list.add("fish", "fishy", "water")
post.image.attach(io: File.open(Rails.root.join('app/assets/images/fish.jpg')), filename:'fish.jpg')
post.save!

post = Post.new(
    
    :caption => "wild sunset.",
    :ispublic => 1,
    :user_id => User.first.id
   
    
)
post.tag_list.add("sunset", "nature")
post.image.attach(io: File.open(Rails.root.join('app/assets/images/sea.jpg')), filename:'sea.jpg')
post.save!

Comment.create!(
    :body => "very nice dog!",
    :post_id => Post.second.id,
    :user_id => User.second.id

)

Comment.create!(
    :body => "what a nice boy!",
    :post_id => Post.second.id,
    :user_id => User.third.id

)

Comment.create!(
    :body => "wow, what a beautiful picture",
    :post_id => Post.first.id,
    :user_id => User.fourth.id

)

Comment.create!(
    :body => "thank you!",
    :post_id => Post.first.id,
    :user_id => User.first.id

)

Comment.create!(
    :body => "nice seal.",
    :post_id => Post.fifth.id,
    :user_id => User.third.id

)
