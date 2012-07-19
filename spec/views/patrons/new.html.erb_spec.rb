require 'spec_helper'

describe "patrons/new" do
  before(:each) do
    assign(:patron, stub_model(Patron,
      :last => "MyString",
      :first => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :source_id => 1,
      :address_key => "MyString",
      :ticket_notes => "MyString",
      :is_cast => false,
      :is_industry => false,
      :is_press => false,
      :is_patron => false,
      :notes => "MyString"
    ).as_new_record)
  end

  it "renders new patron form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patrons_path, :method => "post" do
      assert_select "input#patron_last", :name => "patron[last]"
      assert_select "input#patron_first", :name => "patron[first]"
      assert_select "input#patron_address_1", :name => "patron[address_1]"
      assert_select "input#patron_address_2", :name => "patron[address_2]"
      assert_select "input#patron_city", :name => "patron[city]"
      assert_select "input#patron_state", :name => "patron[state]"
      assert_select "input#patron_zip", :name => "patron[zip]"
      assert_select "input#patron_phone", :name => "patron[phone]"
      assert_select "input#patron_email", :name => "patron[email]"
      assert_select "input#patron_source_id", :name => "patron[source_id]"
      assert_select "input#patron_address_key", :name => "patron[address_key]"
      assert_select "input#patron_ticket_notes", :name => "patron[ticket_notes]"
      assert_select "input#patron_is_cast", :name => "patron[is_cast]"
      assert_select "input#patron_is_industry", :name => "patron[is_industry]"
      assert_select "input#patron_is_press", :name => "patron[is_press]"
      assert_select "input#patron_is_patron", :name => "patron[is_patron]"
      assert_select "input#patron_notes", :name => "patron[notes]"
    end
  end
end
