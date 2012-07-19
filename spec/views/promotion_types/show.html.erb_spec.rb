require 'spec_helper'

describe "promotion_types/show" do
  before(:each) do
    @promotion_type = assign(:promotion_type, stub_model(PromotionType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
