# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.destroy_all
Post.destroy_all
Like.destroy_all
Comment.destroy_all
Follow.destroy_all


user1 = User.create( username: "demo", name: "demo", email: "demo@gmail.com", password: "Philippines" );
profilePic1 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ph1.png')
user1.pic.attach(io: profilePic1, filename: 'ph1.png')


user2 = User.create( username: "iceland", name:"Iceland", email: "iceland@io.com", password: "Iceland" );
profilePic2 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ice6.png')
user2.pic.attach(io: profilePic2, filename: 'ice6.png')


user3 = User.create( username: "thailand", name: "Thailand", email: "thailand@io.com", password: "Thailand" );
profilePic3 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/thai3.png')
user3.pic.attach(io: profilePic3, filename: 'thai3.png')


user4 = User.create( username: "australia", name: "Australia", email: "australia@io.com", password: "Australia" );
# profilePic4 = open('')
# user4.pic.attach(io: profilePic4, filename: '')


user5 = User.create( username: "bali", name: "Bali", email: "bali@io.com", password: "BaliBali" );
profilePic5 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/bali2.png')
user5.pic.attach(io: profilePic5, filename: 'bali2.png')





post1 = Post.create(caption: 'beautiful island', user_id: user1.id)
picture1 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ph2.png')
post1.photo.attach(io: picture1, filename: 'ph2.png')

post2 = Post.create(caption: 'Chocolate hills in Bohol', user_id: user1.id)
picture2 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ph3.png')
post2.photo.attach(io: picture2, filename: 'ph3.png')

post3 = Post.create(caption: 'serenity', user_id: user1.id)
picture3 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ph4.png')
post3.photo.attach(io: picture3, filename: 'ph4.png')

post4 = Post.create(caption: 'beautiful disaster', user_id: user1.id)
picture4 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ph5.png')
post4.photo.attach(io: picture4, filename: 'ph5.png')

post5 = Post.create(caption: 'best way to end the day', user_id: user1.id)
picture5 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ph6.png')
post5.photo.attach(io: picture5, filename: 'ph6.png')

post6 = Post.create(caption: 'tagaytay', user_id: user1.id)
picture6 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ph7.png')
post6.photo.attach(io: picture6, filename: 'ph7.png')

post7 = Post.create(caption: 'underground river', user_id: user1.id)
picture7 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ph8.png')
post7.photo.attach(io: picture7, filename: 'ph8.png')

post8 = Post.create(caption: 'aurora borealis', user_id: user2.id)
picture8 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ice1.png')
post8.photo.attach(io: picture8, filename: 'ice1.png')

post9 = Post.create(caption: 'water falls <3', user_id: user2.id)
picture9 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ice2.png')
post9.photo.attach(io: picture9, filename: 'ice2.png')

post10 = Post.create(caption: '', user_id: user2.id)
picture10 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ice3.png')
post10.photo.attach(io: picture10, filename: 'ice3.png')

post11 = Post.create(caption: '<3', user_id: user2.id)
picture11 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ice4.png')
post11.photo.attach(io: picture11, filename: 'ice4.png')

post12 = Post.create(caption: 'heaven', user_id: user2.id)
picture12 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/ice5.png')
post12.photo.attach(io: picture12, filename: 'ice5.png')

post13 = Post.create(caption: 'temple', user_id: user3.id)
picture13 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/thai1.png')
post13.photo.attach(io: picture13, filename: 'thai1.png')

post14 = Post.create(caption: 'these amazing colors', user_id: user3.id)
picture14 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/thai2.png')
post14.photo.attach(io: picture14, filename: 'thai2.png')

post15 = Post.create(caption: 'Sydney Opera House', user_id: user4.id)
picture15 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/aus1.png')
post15.photo.attach(io: picture15, filename: 'aus1.png')

post16 = Post.create(caption: '', user_id: user5.id)
picture16 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/bali1.png')
post16.photo.attach(io: picture16, filename: 'bali1.png')

post17 = Post.create(caption: 'The gates of heaven', user_id: user5.id)
picture17 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/bali3.png')
post17.photo.attach(io: picture17, filename: 'bali3.png')

post18 = Post.create(caption: 'Swing', user_id: user5.id)
picture18 = open('https://instaclone-seeds.s3-us-west-1.amazonaws.com/bali4.png')
post18.photo.attach(io: picture18, filename: 'bali4.png')







likes = Like.create!([
    { user_id: user1.id, post_id: post13.id },
    { user_id: user1.id, post_id: post15.id },
    { user_id: user1.id, post_id: post18.id },
    { user_id: user2.id, post_id: post3.id },
    { user_id: user2.id, post_id: post7.id },
    { user_id: user2.id, post_id: post16.id },
    { user_id: user3.id, post_id: post16.id },
    { user_id: user3.id, post_id: post7.id },
    { user_id: user3.id, post_id: post8.id },
    { user_id: user3.id, post_id: post2.id },
    { user_id: user3.id, post_id: post5.id },
    { user_id: user3.id, post_id: post18.id },
    { user_id: user4.id, post_id: post8.id },
    { user_id: user4.id, post_id: post3.id },
    { user_id: user5.id, post_id: post8.id },
    { user_id: user5.id, post_id: post2.id },
])

comments = Comment.create!([
    { user_id: user5.id, post_id: post8.id, body: 'northern lights' },
    { user_id: user1.id, post_id: post15.id, body: 'The structure is so cool' },
    { user_id: user1.id, post_id: post9.id, body: 'So refreshing' },
    { user_id: user4.id, post_id: post8.id, body: 'I like the colors' },
    { user_id: user2.id, post_id: post5.id, body: '<3' },
    { user_id: user3.id, post_id: post4.id, body: 'Is this the Mayon volcano in Albay?' },
    { user_id: user1.id, post_id: post4.id, body: 'yes it is' },
    { user_id: user4.id, post_id: post4.id, body: 'When did it last erupted?' },
    { user_id: user2.id, post_id: post6.id, body: 'Good place to have some fresh air' },
    { user_id: user3.id, post_id: post7.id, body: 'This is in Palawan right?' },
    { user_id: user2.id, post_id: post2.id, body: 'sometimes green, sometimes brown'},
    { user_id: user1.id, post_id: post14.id, body: 'Is this one of the temples?'},
])

follows = Follow.create!([
    { follower_id: user1.id, followed_id: user2.id },
    { follower_id: user1.id, followed_id: user5.id },
    { follower_id: user2.id, followed_id: user1.id },
    { follower_id: user2.id, followed_id: user5.id },
    { follower_id: user2.id, followed_id: user4.id },
    { follower_id: user3.id, followed_id: user1.id },
    { follower_id: user3.id, followed_id: user5.id },
    { follower_id: user3.id, followed_id: user2.id },
    { follower_id: user4.id, followed_id: user1.id },
    { follower_id: user5.id, followed_id: user2.id },
    { follower_id: user5.id, followed_id: user3.id },
])