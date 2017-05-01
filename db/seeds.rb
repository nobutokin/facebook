# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

n = 100
while n <= 110
  email = Faker::Internet.email
  password = "password"
  name = "name" + n.to_s
  uid = "uid" + n.to_s
  provider = ""
  User.create!(email: email,
               password: password,
               password_confirmation: password,
               name: name,
               provider: provider,
               uid: uid,
               image_url: nil,
               id: n,
               confirmed_at: Time.now
               )
  n = n + 1
end


n = 100
while n <= 110
  Topic.create(
    title: "タイトル" + n.to_s,
    content: "あああ",
    user_id: n,
    id: n
  )
  n = n + 1
end

n = 100
while n <= 110
  Comment.create(
    content: "あああ",
    user_id: n,
    topic_id: n
  )
  n = n + 1
end

n = 100
while n <= 110
  Conversation.create(
    sender_id: n,
    recipient_id: n,
    id: n
  )
  n = n + 1
end

n = 100
while n <= 110
  Message.create(
    body: "あああ",
    conversation_id: n,
    user_id: n
  )
  n = n + 1
end
