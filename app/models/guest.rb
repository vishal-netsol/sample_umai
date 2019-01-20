class Guest < ApplicationRecord

    validates :name, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness:true 

end
