class RestaurantTable < ApplicationRecord
  belongs_to :restaurant

  validates :name, presence: true
  validates :min_seats, presence: true
  validates :max_seats, presence: true
  validates_uniqueness_of :name, scope: :restaurant
end
