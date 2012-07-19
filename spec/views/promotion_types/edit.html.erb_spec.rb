require 'spec_helper'

describe "promotion_types/edit" do
  before(:each) do
    @promotion_type = assign(:promotion_type, stub_model(PromotionType,
      :name => "MyString"
    ))
  end

  it "renders the edit promotion_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => promotion_types_path(@promotion_type), :method => "post" do
      assert_select "input#promotion_type_name", :name => "promotion_type[name]"
    end
  end
end
