100.times do |post|
  Post.create!(date: Date.today, description: "#{post} description content")
end

puts "100 Posts have been created"
