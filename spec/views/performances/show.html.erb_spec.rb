require 'spec_helper'

describe "performances/show" do
  before(:each) do
    @performance = assign(:performance, stub_model(Performance,
      :play_id => "Play",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Play/)
    rendered.should match(/Type/)
  end
end
