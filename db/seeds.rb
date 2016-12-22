@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")

puts "1 User Created"

AdminUser.create(email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Admin", last_name: "Name")

100.times do |post|
  Post.create!(date: Date.today, description: "#{post} description content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"
