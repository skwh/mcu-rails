require 'spec_helper'

describe "fireteams/new" do
  before(:each) do
    assign(:fireteam, stub_model(Fireteam,
      :name => "MyString",
      :insignia_url => "MyString"
    ).as_new_record)
  end

  it "renders new fireteam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fireteams_path, :method => "post" do
      assert_select "input#fireteam_name", :name => "fireteam[name]"
      assert_select "input#fireteam_insignia_url", :name => "fireteam[insignia_url]"
    end
  end
end
