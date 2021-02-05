FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@test.com'}
    password              {'test1'}
    password_confirmation {password}

    #nickname              {Faker::Name.initials(number: 2)}
    #email                 {Faker::Internet.free_email}
    #password              {Faker::Internet.password(min_length: 6)}
    #password_confirmation {password}
  end
end