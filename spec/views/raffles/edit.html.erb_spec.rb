require 'spec_helper'

describe "raffles/edit" do
  before(:each) do
    @raffle = assign(:raffle, stub_model(Raffle,
      :play_id => "MyString",
      :performance_id => "MyString",
      :patron_id => "MyString"
    ))
  end

  it "renders the edit raffle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => raffles_path(@raffle), :method => "post" do
      assert_select "input#raffle_play_id", :name => "raffle[play_id]"
      assert_select "input#raffle_performance_id", :name => "raffle[performance_id]"
      assert_select "input#raffle_patron_id", :name => "raffle[patron_id]"
    end
  end
end
