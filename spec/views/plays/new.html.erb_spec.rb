require 'spec_helper'

describe "plays/new" do
  before(:each) do
    assign(:play, stub_model(Play,
      :name => "MyString",
      :performances => 1
    ).as_new_record)
  end

  it "renders new play form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plays_path, :method => "post" do
      assert_select "input#play_name", :name => "play[name]"
      assert_select "input#play_performances", :name => "play[performances]"
    end
  end
end
