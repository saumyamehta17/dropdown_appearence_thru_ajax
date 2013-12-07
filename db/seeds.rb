# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!([{user_name: 'John'},{user_name: 'Steve'}])
puts "Users created"
User.first.posts.create!([{post_name: 'Life'},{post_name: 'Jungle Book'}])
User.last.posts.create!(post_name: 'Steve Life')
puts "Posts created"
Post.all.each do |post|
  post.comments.create!(content: "comment of #{post.post_name}")
end
puts "Comments created"

