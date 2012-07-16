require 'spec_helper'

describe "purchases/show" do
  before(:each) do
    @purchase = assign(:purchase, stub_model(Purchase,
      :purchase => "Purchase",
      :ticket_id => 1,
      :last_name => "Last Name",
      :first_name => "First Name",
      :organization => "Organization",
      :phone => "Phone",
      :email => "Email",
      :admission => "Admission",
      :price => "9.99",
      :count => 2,
      :address_1 => "Address 1",
      :address_2 => "Address 2",
      :city => "City",
      :state => "State",
      :zip => "Zip"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Purchase/)
    rendered.should match(/1/)
    rendered.should match(/Last Name/)
    rendered.should match(/First Name/)
    rendered.should match(/Organization/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
    rendered.should match(/Admission/)
    rendered.should match(/9.99/)
    rendered.should match(/2/)
    rendered.should match(/Address 1/)
    rendered.should match(/Address 2/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zip/)
  end
end
