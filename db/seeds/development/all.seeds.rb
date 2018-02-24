puts "=> Seeding started"

start_time = Time.current

ActiveRecord::Base.transaction do
  FactoryGirl.create(
    :user,
    email: "user@example.com",
    password: "password",
    password_confirmation: "password",
    confirmed_at: Time.current
  )

  FactoryGirl.create(
    :user,
    email: "user2@example.com",
    password: "password",
    password_confirmation: "password",
    confirmed_at: Time.current
  )

  Admin.create!(
    email: "admin@example.com",
    password: "password",
    confirmed_at: Time.current,
    first_name: "Admin",
    second_name: "Admin"
  )
end

end_time = Time.current

puts "=> Seeding ended (#{end_time - start_time}s)"
