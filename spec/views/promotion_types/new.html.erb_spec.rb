require 'spec_helper'

describe "promotion_types/new" do
  before(:each) do
    assign(:promotion_type, stub_model(PromotionType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new promotion_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => promotion_types_path, :method => "post" do
      assert_select "input#promotion_type_name", :name => "promotion_type[name]"
    end
  end
end
