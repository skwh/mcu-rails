require 'spec_helper'

describe "platoons/index" do
  before(:each) do
    assign(:platoons, [
      stub_model(Platoon,
        :name => "Name",
        :insignia_url => "Insignia Url"
      ),
      stub_model(Platoon,
        :name => "Name",
        :insignia_url => "Insignia Url"
      )
    ])
  end

  it "renders a list of platoons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Insignia Url".to_s, :count => 2
  end
end
