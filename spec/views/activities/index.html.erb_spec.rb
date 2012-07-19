require 'spec_helper'

describe "activities/index" do
  before(:each) do
    assign(:activities, [
      stub_model(Activity,
        :role_id => 1,
        :patron_id => 2,
        :play_id => 3,
        :performance_id => 4,
        :hours => "9.99",
        :notes => "Notes"
      ),
      stub_model(Activity,
        :role_id => 1,
        :patron_id => 2,
        :play_id => 3,
        :performance_id => 4,
        :hours => "9.99",
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of activities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
