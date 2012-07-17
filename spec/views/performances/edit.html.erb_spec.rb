require 'spec_helper'

describe "performances/edit" do
  before(:each) do
    @performance = assign(:performance, stub_model(Performance,
      :play_id => "MyString",
      :type => ""
    ))
  end

  it "renders the edit performance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => performances_path(@performance), :method => "post" do
      assert_select "input#performance_play_id", :name => "performance[play_id]"
      assert_select "input#performance_type", :name => "performance[type]"
    end
  end
end
