require 'rails_helper'

RSpec.describe 'User' do

  describe 'Sign Up' do
    it 'is not a valid user without a first name' do
      user = build(:user, first_name: nil)
      expect(user).to_not be_valid
    end

    it 'is not a valid user without a last name' do
      user = build(:user, last_name: nil)
      expect(user).to_not be_valid
    end

    it 'is not a valid user without an email' do
      user = build(:user, email: nil)
      expect(user).to_not be_valid
    end

    it 'is not a valid user without a unique email' do
      user1 = create(:user, email: "joe.smith@gmail.com")
      user2 = build(:user, email: "joe.smith@gmail.com")
      expect(user1).to be_valid
      expect(user2).to_not be_valid
    end
  end
end