require 'rails_helper'

RSpec.describe 'FactoryBot' do
  it 'has a valid user factory' do
    expect(build(:user)).to be_valid
  end

  it 'has a valid book factory' do
    expect(build(:book)).to be_valid
  end

  it 'has a valid review factory' do
    expect(build(:review)).to be_valid
  end

  it 'has a valid genre factory' do
    expect(build(:genre)).to be_valid
  end

  it 'has a valid user_book factory' do
    expect(build(:user_book)).to be_valid
  end

  it 'has a valid user_genre factory' do
    expect(build(:user_genre)).to be_valid
  end
end