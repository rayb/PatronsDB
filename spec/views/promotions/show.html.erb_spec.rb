require 'spec_helper'

describe "promotions/show" do
  before(:each) do
    @promotion = assign(:promotion, stub_model(Promotion,
      :name => "Name",
      :play_id => "Play",
      :performance_id => "Performance"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Play/)
    rendered.should match(/Performance/)
  end
end
