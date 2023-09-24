FactoryBot.define do
  factory :book do
    title                {Faker::Book.title}
    author               {Faker::Book.author}
    publisher            {Faker::Book.publisher}
    category_id          {Faker::Number.between(from: 2, to: 33)}
    synopsis_explanation {Faker::Lorem.paragraph(sentence_count: 3)}
    association :user

    after(:build) do |book|
      book.book_image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
