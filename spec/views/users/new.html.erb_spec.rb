require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :login => "MyString",
      :patron_id => 1,
      :password_digest => "MyString",
      :roles_mask => 1,
      :display_order => 1,
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_login", :name => "user[login]"
      assert_select "input#user_patron_id", :name => "user[patron_id]"
      assert_select "input#user_password_digest", :name => "user[password_digest]"
      assert_select "input#user_roles_mask", :name => "user[roles_mask]"
      assert_select "input#user_display_order", :name => "user[display_order]"
      assert_select "input#user_email", :name => "user[email]"
    end
  end
end
