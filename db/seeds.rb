10.times do |n|
  email = Faker::Internet.email
  password = "password"
  no = n + 100
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
               id: no,
               confirmed_at: Time.now
               )
end

10.times do |n|
  no = n + 100
  Topic.create!(
    content: "あああ" + n.to_s,
    user_id: no,
    id: no
  )
end

9.times do |n|
  no1 = n + 100
  no2 = n + 101
  Comment.create!(
    content: "あああ",
    user_id: no1,
    topic_id: no2
  )
end

  Conversation.create(
    sender_id: 101,
    recipient_id: 100,
    id: 101
  )

  Message.create(
    body: "メッセージ1",
    conversation_id: 101,
    user_id: 101
  )

  Message.create(
    body: "メッセージ2",
    conversation_id: 101,
    user_id: 100
  )

  Message.create(
    body: "メッセージ3",
    conversation_id: 101,
    user_id: 101
  )
