require 'rails_helper'

RSpec.describe Tweet, :type => :model do
  it 'has a valid factory' do
    expect(build(:tweet)).to be_valid
  end
end
