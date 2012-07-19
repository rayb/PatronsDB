require 'spec_helper'

describe "sources/show" do
  before(:each) do
    @source = assign(:source, stub_model(Source,
      :name => "Name",
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Notes/)
  end
end
