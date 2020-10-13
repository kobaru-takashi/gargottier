FactoryBot.define do

  factory :message do

    name              {Faker::Name.last_name}
    email             {Faker::Internet.free_email}
    content           {Faker::Lorem.characters(number: 200)}

  end

end