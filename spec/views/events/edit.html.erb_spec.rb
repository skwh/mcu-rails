require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :title => "MyString",
      :description => "MyText",
      :invited => "MyString",
      :attending => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_title", :name => "event[title]"
      assert_select "textarea#event_description", :name => "event[description]"
      assert_select "input#event_invited", :name => "event[invited]"
      assert_select "input#event_attending", :name => "event[attending]"
    end
  end
end
