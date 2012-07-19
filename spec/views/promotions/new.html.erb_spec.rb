require 'spec_helper'

describe "promotions/new" do
  before(:each) do
    assign(:promotion, stub_model(Promotion,
      :name => "MyString",
      :play_id => "MyString",
      :performance_id => "MyString"
    ).as_new_record)
  end

  it "renders new promotion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => promotions_path, :method => "post" do
      assert_select "input#promotion_name", :name => "promotion[name]"
      assert_select "input#promotion_play_id", :name => "promotion[play_id]"
      assert_select "input#promotion_performance_id", :name => "promotion[performance_id]"
    end
  end
end
