FactoryGirl.define do
  factory :activist do
    email
    password "password"
    confirmed_at 1.hour.ago
  end
end
