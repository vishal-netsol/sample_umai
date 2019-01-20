FactoryGirl.define do
    factory :guest do
        name        { Faker::Name.first_name }
        email        {Faker::Internet.email}
    end
end