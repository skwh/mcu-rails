require 'spec_helper'

describe "squads/edit" do
  before(:each) do
    @squad = assign(:squad, stub_model(Squad,
      :name => "MyString",
      :insignia_url => "MyString"
    ))
  end

  it "renders the edit squad form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => squads_path(@squad), :method => "post" do
      assert_select "input#squad_name", :name => "squad[name]"
      assert_select "input#squad_insignia_url", :name => "squad[insignia_url]"
    end
  end
end
