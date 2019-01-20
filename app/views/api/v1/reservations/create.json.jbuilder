json.id @reservation.id
json.time Time.at(@reservation.time).utc.strftime('%d-%m-%Y %I:%M %p')
json.guest_count @reservation.guest_count
json.guest_name @reservation.guest.name
json.table_name @reservation.restaurant_table.name
