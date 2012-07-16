require 'spec_helper'

describe "purchases/new" do
  before(:each) do
    assign(:purchase, stub_model(Purchase,
      :purchase => "MyString",
      :ticket_id => 1,
      :last_name => "MyString",
      :first_name => "MyString",
      :organization => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :admission => "MyString",
      :price => "9.99",
      :count => 1,
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ).as_new_record)
  end

  it "renders new purchase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchases_path, :method => "post" do
      assert_select "input#purchase_purchase", :name => "purchase[purchase]"
      assert_select "input#purchase_ticket_id", :name => "purchase[ticket_id]"
      assert_select "input#purchase_last_name", :name => "purchase[last_name]"
      assert_select "input#purchase_first_name", :name => "purchase[first_name]"
      assert_select "input#purchase_organization", :name => "purchase[organization]"
      assert_select "input#purchase_phone", :name => "purchase[phone]"
      assert_select "input#purchase_email", :name => "purchase[email]"
      assert_select "input#purchase_admission", :name => "purchase[admission]"
      assert_select "input#purchase_price", :name => "purchase[price]"
      assert_select "input#purchase_count", :name => "purchase[count]"
      assert_select "input#purchase_address_1", :name => "purchase[address_1]"
      assert_select "input#purchase_address_2", :name => "purchase[address_2]"
      assert_select "input#purchase_city", :name => "purchase[city]"
      assert_select "input#purchase_state", :name => "purchase[state]"
      assert_select "input#purchase_zip", :name => "purchase[zip]"
    end
  end
end
