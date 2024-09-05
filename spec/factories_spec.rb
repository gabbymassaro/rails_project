require 'rails_helper'

RSpec.describe 'FactoryBot' do
  # Replace :user, :post, :book, etc., with your factory names
  it 'has a valid user factory' do
    expect(build(:user)).to be_valid
  end

  it 'has a valid book factory' do
    expect(build(:book)).to be_valid
  end

  it 'has a valid review factory' do
    expect(build(:review)).to be_valid
  end
end