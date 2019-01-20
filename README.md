# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

curls:


====create reservation====

curl -H "Content-Type: application/json" -X POST -d '{"reservation": {"restaurant_id": 1, "restaurant_table_id":1, "guest_id":1, "restaurant_shift_id": 2, "time": 1547900391, "guest_count": 4}}' http://localhost:3000/api/v1/restaurants/:restaurant_id/reservations

=======update reservation=====

curl -H "Content-Type: application/json" -X PUT -d '{"reservation": {"restaurant_id": 1, "restaurant_table_id":1, "guest_id":1, "restaurant_shift_id": 2, "time": 1547900450, "guest_count": 3}}' http://localhost:3000/api/v1/restaurants/:restaurant_id/reservations/:reservation_id


======= List all reservations ====

curl -H "Content-Type: application/json" -X GET http://localhost:3000/api/v1/restaurants/:restaurant_id/reservations

========= Create restaurants =====
curl -H "Content-Type: application/json" -X POST -d '{"restaurant": {"name": "r2", "email":"wr@er2.com", "phone_number": 9087654343}}' http://localhost:3000/api/v1/restaurants

========= create guests =====
curl -H "Content-Type: application/json" -X POST -d '{"guest": {"name": "r2", "email":"wr@er2.com"}}' http://localhost:3000/api/v1/guests
