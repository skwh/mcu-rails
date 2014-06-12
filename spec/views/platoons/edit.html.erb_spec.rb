require 'spec_helper'

describe "platoons/edit" do
  before(:each) do
    @platoon = assign(:platoon, stub_model(Platoon,
      :name => "MyString",
      :insignia_url => "MyString"
    ))
  end

  it "renders the edit platoon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => platoons_path(@platoon), :method => "post" do
      assert_select "input#platoon_name", :name => "platoon[name]"
      assert_select "input#platoon_insignia_url", :name => "platoon[insignia_url]"
    end
  end
end
