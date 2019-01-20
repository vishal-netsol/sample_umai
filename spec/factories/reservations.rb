FactoryGirl.define do
    factory :reservation do
        association :restaurant
        association :restaurant_shift
        association :restaurant_table
        association :guest
        guest_count       { Faker::Number.number(4) }
        time      { Faker::Time.backward(0, :morning) }
    end
end