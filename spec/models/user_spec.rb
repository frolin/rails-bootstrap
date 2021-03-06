require 'rails_helper'

RSpec.describe User, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end
  it { is_expected.to have_many(:documents) }
end