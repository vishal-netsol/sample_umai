class RestaurantShift < ApplicationRecord
  enum shift: [:morning, :evening]
  belongs_to :restaurant

  validates_uniqueness_of :shift, scope: :restaurant

  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :end_must_be_after_start
 
  private
  def end_must_be_after_start
    if start_time >= end_time
      errors.add(:end_time, "must be after start time")
    end
  end

end
