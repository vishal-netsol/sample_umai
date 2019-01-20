FactoryGirl.define do
    factory :restaurant_shift do
        shift           {0}
        start_time      { Faker::Time.backward(0, :morning) }
        end_time        { Faker::Time.backward(0, :morning) }
        association     :restaurant
    end
end