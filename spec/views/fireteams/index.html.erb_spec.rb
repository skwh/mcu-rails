require 'spec_helper'

describe "fireteams/index" do
  before(:each) do
    assign(:fireteams, [
      stub_model(Fireteam,
        :name => "Name",
        :insignia_url => "Insignia Url"
      ),
      stub_model(Fireteam,
        :name => "Name",
        :insignia_url => "Insignia Url"
      )
    ])
  end

  it "renders a list of fireteams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Insignia Url".to_s, :count => 2
  end
end
