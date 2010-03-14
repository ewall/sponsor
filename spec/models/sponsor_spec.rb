require 'spec_helper'

describe Sponsor do
  before(:each) do
    @valid_attributes = {
      :firstname => "value for firstname",
      :lastname => "value for lastname",
      :street_address1 => "value for street_address1",
      :street_address2 => "value for street_address2",
      :city => "value for city",
      :state => "value for state",
      :zipcode => 9.99,
      :phone1 => "value for phone1",
      :phone2 => "value for phone2",
      :email1 => "value for email1",
      :email2 => "value for email2",
      :active => false,
      :new => false
    }
  end

  it "should create a new instance given valid attributes" do
    Sponsor.create!(@valid_attributes)
  end
end
