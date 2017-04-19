FactoryGirl.define do
  factory :user do
    email "test@test.com"
    username "Test Name"
    password '111111'
    password_confirmation '111111'
  end
end
