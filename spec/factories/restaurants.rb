FactoryGirl.define do
    factory :restaurant do
        name            { Faker::Name.first_name }
        email           {Faker::Internet.email}
        phone_number     { Faker::Number.number(10) }
    end
end