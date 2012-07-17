require 'spec_helper'

describe "performances/new" do
  before(:each) do
    assign(:performance, stub_model(Performance,
      :play_id => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new performance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => performances_path, :method => "post" do
      assert_select "input#performance_play_id", :name => "performance[play_id]"
      assert_select "input#performance_type", :name => "performance[type]"
    end
  end
end
