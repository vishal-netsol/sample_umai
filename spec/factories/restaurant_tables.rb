FactoryGirl.define do
    factory :restaurant_table do
        name            { Faker::Name.first_name }
        min_seats       { Faker::Number.number(3) }
        max_seats       { Faker::Number.number(5) }
        association     :restaurant
    end
end