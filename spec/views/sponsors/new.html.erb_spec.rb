require 'spec_helper'

describe "/sponsors/new.html.erb" do
  include SponsorsHelper

  before(:each) do
    assigns[:sponsor] = stub_model(Sponsor,
      :new_record? => true,
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
  end

  it "renders new sponsor form" do
    render

    response.should have_tag("form[action=?][method=post]", sponsors_path) do
      with_tag("input#sponsor_firstname[name=?]", "sponsor[firstname]")
      with_tag("input#sponsor_lastname[name=?]", "sponsor[lastname]")
      with_tag("input#sponsor_street_address1[name=?]", "sponsor[street_address1]")
      with_tag("input#sponsor_street_address2[name=?]", "sponsor[street_address2]")
      with_tag("input#sponsor_city[name=?]", "sponsor[city]")
      with_tag("input#sponsor_state[name=?]", "sponsor[state]")
      with_tag("input#sponsor_zipcode[name=?]", "sponsor[zipcode]")
      with_tag("input#sponsor_phone1[name=?]", "sponsor[phone1]")
      with_tag("input#sponsor_phone2[name=?]", "sponsor[phone2]")
      with_tag("input#sponsor_email1[name=?]", "sponsor[email1]")
      with_tag("input#sponsor_email2[name=?]", "sponsor[email2]")
      with_tag("input#sponsor_active[name=?]", "sponsor[active]")
      with_tag("input#sponsor_new[name=?]", "sponsor[new]")
    end
  end
end
