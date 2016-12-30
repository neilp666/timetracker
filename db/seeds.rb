@employee = Employee.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone: "7572390419",
                    ssn: 1234,
                    company: "ABC Company")

puts "1 employee Created"
AdminUser.create(email: "admin@test.com",
                 password: "asdfasdf",
                 password_confirmation: "asdfasdf",
                 first_name: "Admin",
                 last_name: "Name",
                 phone: "7572390419",
                 ssn: 1234,
                 company: "ABC Company")

puts "1 Admin User created"


AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

100.times do |post|
  Post.create!(date: Date.today, work_performed: "#{post} work_performed content goes here, work_performed content goes here, work_performed content goes here", user_id: @employee.id, daily_hours: 12.5)
end

puts "100 Posts have been created"
