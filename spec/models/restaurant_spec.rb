require 'rails_helper'

RSpec.describe Restaurant, type: :model do
    context 'validations' do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:email) }
      it { should validate_uniqueness_of(:email) }
      it { should validate_presence_of(:phone_number) }
      it { should validate_uniqueness_of(:phone_number) }
      it { should validate_numericality_of(:phone_number).only_integer}
      it { should validate_numericality_of(:phone_number).with_message("is the wrong length (should be 10 characters)") }
    end
   
    context 'associations' do
      it { should have_many(:reservations).dependent(:destroy) }
      it { should have_many(:restaurant_shifts).dependent(:destroy) }
      it { should have_many(:restaurant_tables).dependent(:destroy) }
    end
end