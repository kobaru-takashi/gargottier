FactoryBot.define do

  factory :reservation do
    reservation_time     {Faker::Number.between(from:1, to:20)}
    number_of_people     {Faker::Number.between(from:1, to:8)}
    family_name          {Faker::Name.last_name}
    first_name           {Faker::Name.first_name}
    family_name_kana     {"ヤマダ"}
    first_name_kana      {"タロウ"}
    phone_number         {Faker::Number.leading_zero_number(digits: 11)}
    email                {Faker::Internet.free_email}
  end

end