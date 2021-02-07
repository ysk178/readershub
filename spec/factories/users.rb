FactoryBot.define do
  factory :user do
    nickname              { 'sample' }
    email                 { 'sample@sample.com' }
    password              { 'sample1' }
    password_confirmation { password }

    # nickname              {Faker::Name.initials(number: 2)}
    # email                 {Faker::Internet.free_email}
    # password              {Faker::Internet.password(min_length: 6)}
    # password_confirmation {password}
  end
end
