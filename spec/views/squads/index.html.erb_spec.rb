require 'spec_helper'

describe "squads/index" do
  before(:each) do
    assign(:squads, [
      stub_model(Squad,
        :name => "Name",
        :insignia_url => "Insignia Url"
      ),
      stub_model(Squad,
        :name => "Name",
        :insignia_url => "Insignia Url"
      )
    ])
  end

  it "renders a list of squads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Insignia Url".to_s, :count => 2
  end
end
