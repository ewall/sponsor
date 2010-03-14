require 'spec_helper'

describe "/sponsors/show.html.erb" do
  include SponsorsHelper
  before(:each) do
    assigns[:sponsor] = @sponsor = stub_model(Sponsor,
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

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ firstname/)
    response.should have_text(/value\ for\ lastname/)
    response.should have_text(/value\ for\ street_address1/)
    response.should have_text(/value\ for\ street_address2/)
    response.should have_text(/value\ for\ city/)
    response.should have_text(/value\ for\ state/)
    response.should have_text(/9\.99/)
    response.should have_text(/value\ for\ phone1/)
    response.should have_text(/value\ for\ phone2/)
    response.should have_text(/value\ for\ email1/)
    response.should have_text(/value\ for\ email2/)
    response.should have_text(/false/)
    response.should have_text(/false/)
  end
end
