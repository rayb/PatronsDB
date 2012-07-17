require 'spec_helper'

describe "performances/index" do
  before(:each) do
    assign(:performances, [
      stub_model(Performance,
        :play_id => "Play",
        :type => "Type"
      ),
      stub_model(Performance,
        :play_id => "Play",
        :type => "Type"
      )
    ])
  end

  it "renders a list of performances" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Play".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
