FactoryGirl.define do
  factory :user do
    email "test@test.com"
    username "test"
    password '111111'
    password_confirmation '111111'
  end
end
