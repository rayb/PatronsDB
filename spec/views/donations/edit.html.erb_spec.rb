require 'spec_helper'

describe "donations/edit" do
  before(:each) do
    @donation = assign(:donation, stub_model(Donation,
      :patron_id => "MyString",
      :amount => "9.99",
      :promotion_id => 1,
      :notes => "MyString"
    ))
  end

  it "renders the edit donation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => donations_path(@donation), :method => "post" do
      assert_select "input#donation_patron_id", :name => "donation[patron_id]"
      assert_select "input#donation_amount", :name => "donation[amount]"
      assert_select "input#donation_promotion_id", :name => "donation[promotion_id]"
      assert_select "input#donation_notes", :name => "donation[notes]"
    end
  end
end
