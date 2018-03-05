puts "=> Seeding started"

start_time = Time.current

ActiveRecord::Base.transaction do
  User.create!(
    email: "user@example.com",
    password: "password",
    password_confirmation: "password",
    confirmed_at: Time.current,
    full_name: "First Name"
  )

  User.create!(
    email: "user2@example.com",
    password: "password",
    password_confirmation: "password",
    confirmed_at: Time.current,
    full_name: "Second Name"
  )

  Admin.create!(
    email: "admin@example.com",
    password: "password",
    confirmed_at: Time.current,
    first_name: "Admin",
    second_name: "Admin"
  )

  Manager.create!(
    email: "manager@example.com",
    password: "password",
    confirmed_at: Time.current
  )
end

end_time = Time.current

puts "=> Seeding ended (#{end_time - start_time}s)"
