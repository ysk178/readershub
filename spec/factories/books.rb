FactoryBot.define do
  factory :book do
    title                 { 'sample' }
    author                { 'sample' }
    genre_id              { 2 }
    summary               { 'sample' }
    impressions           { 'sample' }
    # text {Faker::Lorem.sentence}
    # image {Faker::Lorem.sentence}
    association :user

    after(:build) do |book|
      book.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
