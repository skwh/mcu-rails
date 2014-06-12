require 'spec_helper'

describe "fireteams/edit" do
  before(:each) do
    @fireteam = assign(:fireteam, stub_model(Fireteam,
      :name => "MyString",
      :insignia_url => "MyString"
    ))
  end

  it "renders the edit fireteam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fireteams_path(@fireteam), :method => "post" do
      assert_select "input#fireteam_name", :name => "fireteam[name]"
      assert_select "input#fireteam_insignia_url", :name => "fireteam[insignia_url]"
    end
  end
end
