# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database"
User.destroy_all
Chatroom.destroy_all

puts "Creating users"

3.times do
  user = User.create(
    nickname: Faker::Internet.username,
    avatar: Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "bmp", set: "set1", bgset: "bg1"),
    email: Faker::Internet.safe_email,
    password: "123456"
  )
  user.save
  puts "user_name: #{user.nickname} has been created!"
  puts "user_name: #{user.avatar} has been created!"
  puts "user_name: #{user.email} has been created!"
  puts "user_name: #{user.encrypted_password} has been created!"
end

puts "Creating chatrooms"

chatroom_one = Chatroom.create(name: "general")
chatroom_two = Chatroom.create(name: "random")
chatroom_three = Chatroom.create(name: "memes")

chatroom_one.save
chatroom_two.save
chatroom_three.save

puts "chatroom1: #{chatroom_one.name} has been created!"
puts "chatroom1: #{chatroom_two.name} has been created!"
puts "chatroom1: #{chatroom_three.name} has been created!"

puts "Finished!"
