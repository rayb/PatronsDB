require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :login => "Login",
        :patron_id => 1,
        :password_digest => "Password Digest",
        :roles_mask => 2,
        :display_order => 3,
        :email => "Email"
      ),
      stub_model(User,
        :login => "Login",
        :patron_id => 1,
        :password_digest => "Password Digest",
        :roles_mask => 2,
        :display_order => 3,
        :email => "Email"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
