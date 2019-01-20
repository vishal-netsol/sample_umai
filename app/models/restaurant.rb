class Restaurant < ApplicationRecord

    validates :name, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
    validates :phone_number, presence: true, numericality: {only_integer: true},
    length: { minimum: 10, maximum: 10, message: "is the wrong length (should be 10 characters)" }, uniqueness: true

    has_many :reservations, dependent: :destroy
    has_many :restaurant_shifts, dependent: :destroy
    has_many :restaurant_tables, dependent: :destroy
end
