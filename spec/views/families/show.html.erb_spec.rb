require 'spec_helper'

describe "/families/show.html.erb" do
  include FamiliesHelper
  before(:each) do
    assigns[:family] = @family = stub_model(Family,
      :parent_names => "value for parent_names",
      :picture_url => "value for picture_url",
      :active => false,
      :sponsored => false,
      :monthly_need => 9.99,
      :year_joined => 
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ parent_names/)
    response.should have_text(/value\ for\ picture_url/)
    response.should have_text(/false/)
    response.should have_text(/false/)
    response.should have_text(/9\.99/)
    response.should have_text(//)
  end
end
