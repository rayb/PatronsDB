require 'spec_helper'

describe "raffles/index" do
  before(:each) do
    assign(:raffles, [
      stub_model(Raffle,
        :play_id => "Play",
        :performance_id => "Performance",
        :patron_id => "Patron"
      ),
      stub_model(Raffle,
        :play_id => "Play",
        :performance_id => "Performance",
        :patron_id => "Patron"
      )
    ])
  end

  it "renders a list of raffles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Play".to_s, :count => 2
    assert_select "tr>td", :text => "Performance".to_s, :count => 2
    assert_select "tr>td", :text => "Patron".to_s, :count => 2
  end
end
