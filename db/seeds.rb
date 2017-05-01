# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do |n|
  email = Faker::Internet.email
  password = "password"
  no = n + 1
  name = "name" + no.to_s
  uid = "uid" + no.to_s
  provider = ""
  User.create!(email: email,
               password: password,
               password_confirmation: password,
               name: name,
               provider: provider,
               uid: uid,
               image_url: nil,
               id: no
               )
end

n = 1
while n <= 10
  Topic.create(
    title: "タイトル" + n.to_s,
    content: "あああ",
    user_id: n
  )
  n = n + 1
end

n = 1
while n <= 10
  Comment.create(
    content: "あああ",
    user_id: n,
    topic_id: n
  )
  n = n + 1
end

n = 1
while n <= 10
  Conversation.create(
    sender_id: n,
    recipient_id: n
  )
  n = n + 1
end

n = 1
while n <= 10
  Message.create(
    body: "あああ",
    conversation_id: n,
    user_id: n
  )
  n = n + 1
end
