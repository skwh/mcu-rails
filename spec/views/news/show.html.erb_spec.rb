require 'spec_helper'

describe "news/show" do
  before(:each) do
    @news = assign(:news, stub_model(News,
      :title => "Title",
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Text/)
  end
end
