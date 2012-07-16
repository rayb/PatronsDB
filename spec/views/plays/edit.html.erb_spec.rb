require 'spec_helper'

describe "plays/edit" do
  before(:each) do
    @play = assign(:play, stub_model(Play,
      :name => "MyString",
      :performances => 1
    ))
  end

  it "renders the edit play form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plays_path(@play), :method => "post" do
      assert_select "input#play_name", :name => "play[name]"
      assert_select "input#play_performances", :name => "play[performances]"
    end
  end
end
