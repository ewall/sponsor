require 'spec_helper'

describe "/families/index.html.erb" do
  include FamiliesHelper

  before(:each) do
    assigns[:families] = [
      stub_model(Family,
        :parent_names => "value for parent_names",
        :picture_url => "value for picture_url",
        :active => false,
        :sponsored => false,
        :monthly_need => 9.99,
        :year_joined => 
      ),
      stub_model(Family,
        :parent_names => "value for parent_names",
        :picture_url => "value for picture_url",
        :active => false,
        :sponsored => false,
        :monthly_need => 9.99,
        :year_joined => 
      )
    ]
  end

  it "renders a list of families" do
    render
    response.should have_tag("tr>td", "value for parent_names".to_s, 2)
    response.should have_tag("tr>td", "value for picture_url".to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
    response.should have_tag("tr>td", 9.99.to_s, 2)
    response.should have_tag("tr>td", .to_s, 2)
  end
end
