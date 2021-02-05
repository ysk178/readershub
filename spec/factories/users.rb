FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@test.com'}
    password              {'test1'}
    password_confirmation {password}
  end
end