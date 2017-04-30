# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do |n|
  email = Faker::Internet.email
  password = "password"
  no = n + 1
  name = "name" + no.to_s
  User.create!(email: email,
               password: password,
               password_confirmation: password,
               name: name,
               provider: "facebook",
               uid: n
               )
end

n = 1
while n <= 50
  Topic.create(
    title: "タイトル" + n.to_s,
    content: "あああ",
    user_id: n
  )
  n = n + 1
end

n = 1
while n <= 50
  Comment.create(
    content: "あああ",
    user_id: n,
    topic_id: 1
  )
  n = n + 1
end

n = 1
while n <= 50
  Conversation.create(
    sender_id: n,
    recipient_id: n
  )
  n = n + 1
end

n = 1
while n <= 50
  Message.create(
    body: "あああ",
    conversation_id: n,
    user_id: n
  )
  n = n + 1
end
