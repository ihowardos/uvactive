FactoryGirl.define do
  factory :manager do
    email
    password "password"
    confirmed_at 1.hour.ago
  end
end
