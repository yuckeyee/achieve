100.times do |n|
  name  = "name#{n}"
  email = Faker::Internet.email
  password = "password"
  User.create!(
               name: name,
               email: email,
               password: password,
               password_confirmation: password
               )
end

n = 1
while n <= 100
  Blog.create(
    title: "title#{n}",
    content: "content#{n}",
    user_id: n
  )
  n = n + 1
end