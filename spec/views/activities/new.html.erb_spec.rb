require 'spec_helper'

describe "activities/new" do
  before(:each) do
    assign(:activity, stub_model(Activity,
      :role_id => 1,
      :patron_id => 1,
      :play_id => 1,
      :performance_id => 1,
      :hours => "9.99",
      :notes => "MyString"
    ).as_new_record)
  end

  it "renders new activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activities_path, :method => "post" do
      assert_select "input#activity_role_id", :name => "activity[role_id]"
      assert_select "input#activity_patron_id", :name => "activity[patron_id]"
      assert_select "input#activity_play_id", :name => "activity[play_id]"
      assert_select "input#activity_performance_id", :name => "activity[performance_id]"
      assert_select "input#activity_hours", :name => "activity[hours]"
      assert_select "input#activity_notes", :name => "activity[notes]"
    end
  end
end
