require 'rails_helper'

RSpec.describe Tweet, :type => :model do
  # TODO userモデルとの関連付けを考慮したテストに書き換える
  it 'has a valid factory' do
    expect(build(:tweet)).to be_valid
  end
end
