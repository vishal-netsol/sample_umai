class Restaurant < ApplicationRecord

    validates :name, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
    validates :phone_number, presence: {message: 'Not a valid phone number'}, numericality: true,
    length: { minimum: 10, maximum: 10 }, uniqueness: true

    has_many :reservations, dependent: :destroy
    has_many :restaurant_shifts, dependent: :destroy
    has_many :restaurant_tables, dependent: :destroy
end
