require 'spec_helper'

describe Family do
  before(:each) do
    @valid_attributes = {
      :parent_names => "value for parent_names",
      :picture_url => "value for picture_url",
      :active => false,
      :sponsored => false,
      :monthly_need => 9.99,
      :year_joined => 
    }
  end

  it "should create a new instance given valid attributes" do
    Family.create!(@valid_attributes)
  end
end
