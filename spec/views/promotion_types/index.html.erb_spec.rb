require 'spec_helper'

describe "promotion_types/index" do
  before(:each) do
    assign(:promotion_types, [
      stub_model(PromotionType,
        :name => "Name"
      ),
      stub_model(PromotionType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of promotion_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
