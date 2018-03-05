FactoryGirl.define do
  factory :admin do
    email
    password "password"
    first_name "Admin"
    last_name "Admin"
    confirmed_at 1.hour.ago
  end
end
