require 'spec_helper'

describe "raffles/show" do
  before(:each) do
    @raffle = assign(:raffle, stub_model(Raffle,
      :play_id => "Play",
      :performance_id => "Performance",
      :patron_id => "Patron"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Play/)
    rendered.should match(/Performance/)
    rendered.should match(/Patron/)
  end
end
