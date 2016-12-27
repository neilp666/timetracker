namespace :notification do
  desc "Sends SMS notification to employees asking them to log overtime if they had overtime or not"
  task sms: :environment do
    #if Time.now.sunday? #1. Schedule to run at sunday at 5pm
      employees = Employee.all #2. Iterate over all employees
      notification_message = "Please log into the Overtime Management Dashboard to request overtime or confirm your hours for last week: 'https:overtime2016.herokuapp.com'"

      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification_message)
                             #3. Skip AdminUsers
                               #4. Send link that has instructions and a link to log time.
      #end
    end
  end

  desc "Sends mail notification to manager (admin users)rtime each day of pending requests"
  task manager_email: :environment do
    # Iterate over the list of pending overtime requests
    # Check to see if there are any requests
    # Iterate over the list of admin users/manager
    # Send email to each admin
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end

end
