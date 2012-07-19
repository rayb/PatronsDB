require 'spec_helper'

describe "patrons/index" do
  before(:each) do
    assign(:patrons, [
      stub_model(Patron,
        :last => "Last",
        :first => "First",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone => "Phone",
        :email => "Email",
        :source_id => 1,
        :address_key => "Address Key",
        :ticket_notes => "Ticket Notes",
        :is_cast => false,
        :is_industry => false,
        :is_press => false,
        :is_patron => false,
        :notes => "Notes"
      ),
      stub_model(Patron,
        :last => "Last",
        :first => "First",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone => "Phone",
        :email => "Email",
        :source_id => 1,
        :address_key => "Address Key",
        :ticket_notes => "Ticket Notes",
        :is_cast => false,
        :is_industry => false,
        :is_press => false,
        :is_patron => false,
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of patrons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last".to_s, :count => 2
    assert_select "tr>td", :text => "First".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address Key".to_s, :count => 2
    assert_select "tr>td", :text => "Ticket Notes".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
