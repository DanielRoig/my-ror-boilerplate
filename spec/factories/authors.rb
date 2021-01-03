FactoryBot.define do
  factory :author do
    first_name { 'Pio' }
    second_name { 'Baroja' }
    birth { '1872-12-28' }
    born_country { 'España' }
    biography { 'MyText' }

    sequence(:email) { |n| "pio.baroja#{n}@gen98.es"}

    trait :with_books do
      after(:create) do |author|
        FactoryBot.create_list(:book, 10, author: author)
      end
    end
  end
end
