require 'spec_helper'

describe "fireteams/show" do
  before(:each) do
    @fireteam = assign(:fireteam, stub_model(Fireteam,
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
