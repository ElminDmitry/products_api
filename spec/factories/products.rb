FactoryBot.define do
  factory :product do
    name        { Faker::Book.title }
    photo_url   { Faker::Internet.url }
    barcode     { Faker::Code.asin }
    price       { Faker::Number.number(5) }
    sku         { Faker::Crypto.md5 }
    producer    { Faker::Company.name }
  end
end
