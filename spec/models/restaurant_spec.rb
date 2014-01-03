require 'spec_helper'

describe Restaurant do
  let(:restaurant) { Restaurant.create(name: "Da Totò") }

  subject { restaurant }

  it { should respond_to(:name) }
  it { should be_valid }

  context "when name is absent" do
    it "is invalid" do
      restaurant.name = ""
      expect(restaurant).not_to be_valid
    end
  end

  context "when name is duplicated" do
    it "is invalid" do
      duplicate = Restaurant.new(name: restaurant.name)
      expect(duplicate).not_to be_valid
    end
  end

end
