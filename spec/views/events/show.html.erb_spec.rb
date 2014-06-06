require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :title => "Title",
      :description => "MyText",
      :invited => "Invited",
      :attending => "Attending"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Invited/)
    rendered.should match(/Attending/)
  end
end
