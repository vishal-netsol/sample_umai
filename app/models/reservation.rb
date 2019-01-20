class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :restaurant_table
  belongs_to :guest
  belongs_to :restaurant_shift

  validate :is_table_available, :is_restaurant_open

  after_save :send_email_notification

  private

  def is_table_available
    debugger
    unless (restaurant_table.min_seats..restaurant_table.max_seats).include? guest_count
      errors.add(:guest_count, "is out of range for this table")
    end
  end

  def is_restaurant_open
    date = "01-01-2000 "
    reservation_time = (date + Time.at(time).utc.strftime("%I:%M%p")).to_datetime
    unless reservation_time.between?(restaurant_shift.start_time, restaurant_shift.end_time)
      errors.add(:time, "is out of range for this shift")
    end
  end

  def send_email_notification
    ReservationMailer.delay.send_email_to_restaurant(self)
    ReservationMailer.delay.send_email_to_user(self)
  end

end
