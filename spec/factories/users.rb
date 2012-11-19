# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, aliases: [] do
    sequence(:email)      { |n| "user#{Time.now.to_i + n}@gtest.com" }
    sequence(:name)       { |n| "test_user#{Time.now.to_i + n}" }
    
    confirmed_at          Time.now - 1.minute
    password              "password"
    password_confirmation "password"
  end

  factory :confirmed_user, parent: :user do 
    confirmed_at Time.now
  end

  factory :unconfirmed_user, parent: :user do 
    confirmed_at          nil
  end
end