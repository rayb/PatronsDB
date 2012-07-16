require 'spec_helper'

describe "plays/index" do
  before(:each) do
    assign(:plays, [
      stub_model(Play,
        :name => "Name",
        :performances => 1
      ),
      stub_model(Play,
        :name => "Name",
        :performances => 1
      )
    ])
  end

  it "renders a list of plays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
