require 'spec_helper'

describe "sources/index" do
  before(:each) do
    assign(:sources, [
      stub_model(Source,
        :name => "Name",
        :notes => "Notes"
      ),
      stub_model(Source,
        :name => "Name",
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of sources" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
