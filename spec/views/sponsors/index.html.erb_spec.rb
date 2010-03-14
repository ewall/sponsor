require 'spec_helper'

describe "/sponsors/index.html.erb" do
  include SponsorsHelper

  before(:each) do
    assigns[:sponsors] = [
      stub_model(Sponsor,
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
      ),
      stub_model(Sponsor,
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
      )
    ]
  end

  it "renders a list of sponsors" do
    render
    response.should have_tag("tr>td", "value for firstname".to_s, 2)
    response.should have_tag("tr>td", "value for lastname".to_s, 2)
    response.should have_tag("tr>td", "value for street_address1".to_s, 2)
    response.should have_tag("tr>td", "value for street_address2".to_s, 2)
    response.should have_tag("tr>td", "value for city".to_s, 2)
    response.should have_tag("tr>td", "value for state".to_s, 2)
    response.should have_tag("tr>td", 9.99.to_s, 2)
    response.should have_tag("tr>td", "value for phone1".to_s, 2)
    response.should have_tag("tr>td", "value for phone2".to_s, 2)
    response.should have_tag("tr>td", "value for email1".to_s, 2)
    response.should have_tag("tr>td", "value for email2".to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
  end
end
