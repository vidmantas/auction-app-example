require 'spec_helper'

describe Product do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :auction_ends_at => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Product.create!(@valid_attributes)
  end
  
  it "should mark auction as ended if it's so" do
    product = Product.create(@valid_attributes.merge(:auction_ends_at => 2.hours.ago))
    product.auction_ended?.should be_true
  end
  
  it "shouldn't mark auction as ended if it ends in the future" do
    product = Product.create(@valid_attributes.merge(:auction_ends_at => 2.hours.from_now))
    product.auction_ended?.should be_false
  end
end
