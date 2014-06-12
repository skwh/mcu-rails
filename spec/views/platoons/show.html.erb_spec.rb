require 'spec_helper'

describe "platoons/show" do
  before(:each) do
    @platoon = assign(:platoon, stub_model(Platoon,
      :name => "Name",
      :insignia_url => "Insignia Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Insignia Url/)
  end
end
