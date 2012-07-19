require 'spec_helper'

describe "donations/index" do
  before(:each) do
    assign(:donations, [
      stub_model(Donation,
        :patron_id => "Patron",
        :amount => "9.99",
        :promotion_id => 1,
        :notes => "Notes"
      ),
      stub_model(Donation,
        :patron_id => "Patron",
        :amount => "9.99",
        :promotion_id => 1,
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of donations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Patron".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
