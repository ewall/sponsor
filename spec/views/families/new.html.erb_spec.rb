require 'spec_helper'

describe "/families/new.html.erb" do
  include FamiliesHelper

  before(:each) do
    assigns[:family] = stub_model(Family,
      :new_record? => true,
      :parent_names => "value for parent_names",
      :picture_url => "value for picture_url",
      :active => false,
      :sponsored => false,
      :monthly_need => 9.99,
      :year_joined => 
    )
  end

  it "renders new family form" do
    render

    response.should have_tag("form[action=?][method=post]", families_path) do
      with_tag("input#family_parent_names[name=?]", "family[parent_names]")
      with_tag("input#family_picture_url[name=?]", "family[picture_url]")
      with_tag("input#family_active[name=?]", "family[active]")
      with_tag("input#family_sponsored[name=?]", "family[sponsored]")
      with_tag("input#family_monthly_need[name=?]", "family[monthly_need]")
      with_tag("input#family_year_joined[name=?]", "family[year_joined]")
    end
  end
end
