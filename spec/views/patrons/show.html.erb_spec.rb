require 'spec_helper'

describe "patrons/show" do
  before(:each) do
    @patron = assign(:patron, stub_model(Patron,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last/)
    rendered.should match(/First/)
    rendered.should match(/Address 1/)
    rendered.should match(/Address 2/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zip/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
    rendered.should match(/1/)
    rendered.should match(/Address Key/)
    rendered.should match(/Ticket Notes/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Notes/)
  end
end
