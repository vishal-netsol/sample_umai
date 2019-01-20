require 'rails_helper'

RSpec.describe Guest, type: :model do
    context 'validations' do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:email) }
      it { should validate_uniqueness_of(:email) }
    end
   
    # context 'associations' do
    #   it { should belong_to(:industry) }
    #   it { should have_many(:sub_sectors).dependent(:restrict_with_exception) }
    # end
end