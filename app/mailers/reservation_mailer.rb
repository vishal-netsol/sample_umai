class ReservationMailer < ApplicationMailer
    default from: 'notifications@example.com'
   
   def send_email_to_restaurant(reservation)
        @reservation = reservation
        @user = @reservation.guest
        mail(to: @reservation.restaurant.email, subject: 'Table Reservation')
   end

   def send_email_to_user(reservation)
        @reservation = reservation
        @user = @reservation.guest
        mail(to: @user.email, subject: 'Table Reservation')
 end
end
