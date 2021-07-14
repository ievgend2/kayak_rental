FactoryBot.define do
  factory :customer do
    f.first_name { Faker::Name.first_name }
  f.last_name { Faker::Name.last_name }
  f.email { Faker::Number.email}

  end
end
