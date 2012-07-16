require 'spec_helper'

describe "plays/show" do
  before(:each) do
    @play = assign(:play, stub_model(Play,
      :name => "Name",
      :performances => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
