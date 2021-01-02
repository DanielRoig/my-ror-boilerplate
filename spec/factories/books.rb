FactoryBot.define do
  factory :book do
    author
    title { "El árbol de la ciencia" }
    category { 1 }
    price { 950 }

    sequence(:isbn) { |n| n}
  end
end
