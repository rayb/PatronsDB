require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :login => "MyString",
      :patron_id => 1,
      :password_digest => "MyString",
      :roles_mask => 1,
      :display_order => 1,
      :email => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_login", :name => "user[login]"
      assert_select "input#user_patron_id", :name => "user[patron_id]"
      assert_select "input#user_password_digest", :name => "user[password_digest]"
      assert_select "input#user_roles_mask", :name => "user[roles_mask]"
      assert_select "input#user_display_order", :name => "user[display_order]"
      assert_select "input#user_email", :name => "user[email]"
    end
  end
end
