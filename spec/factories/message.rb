FactoryBot.define do

  factory :message do

    name              {Faker::JapaneseMedia::OnePiece.character}
    email             {Faker::Internet.email}
    content           {Faker::Lorem.characters(number: 200)}

  end

end