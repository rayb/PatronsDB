require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :login => "Login",
      :patron_id => 1,
      :password_digest => "Password Digest",
      :roles_mask => 2,
      :display_order => 3,
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Login/)
    rendered.should match(/1/)
    rendered.should match(/Password Digest/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Email/)
  end
end
