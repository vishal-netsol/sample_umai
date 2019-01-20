json.restaurants @restaurants do |restaurant|
  json.name restaurant.name
  json.email restaurant.email
  json.phone restaurant.phone_number
end