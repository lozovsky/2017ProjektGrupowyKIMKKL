User.create!(nickname: "DEMACIA",
            name: "Jarvan",
            surname: "IV",
            email: "jarvan.the.fourth@mail.com",
            password: "garensucks",
            password_confirmation: "garensucks",
            admin: true)

99.times do |n|
  nickname = Faker::Lorem.characters(15)
  name = Faker::Name.first_name
  surname = Faker::Name.last_name
  email = "placeholder#{n+1}@example.com"
  password = "password"
  User.create!(nickname: nickname,
               name: name,
               surname: surname,
               email: email,
               password: password,
               password_confirmation: password)
end

#100.times do |n|
#  name = Faker::Address.street_name
#  Stop.create!(name: name)
#end
#
#10.times do |n|
#  name = n + 1
#  Line.create!(name: name)
#end


