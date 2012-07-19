require 'spec_helper'

describe "promotions/index" do
  before(:each) do
    assign(:promotions, [
      stub_model(Promotion,
        :name => "Name",
        :play_id => "Play",
        :performance_id => "Performance"
      ),
      stub_model(Promotion,
        :name => "Name",
        :play_id => "Play",
        :performance_id => "Performance"
      )
    ])
  end

  it "renders a list of promotions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Play".to_s, :count => 2
    assert_select "tr>td", :text => "Performance".to_s, :count => 2
  end
end
