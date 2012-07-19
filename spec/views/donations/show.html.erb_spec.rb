require 'spec_helper'

describe "donations/show" do
  before(:each) do
    @donation = assign(:donation, stub_model(Donation,
      :patron_id => "Patron",
      :amount => "9.99",
      :promotion_id => 1,
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Patron/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/Notes/)
  end
end
