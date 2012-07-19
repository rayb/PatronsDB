require "spec_helper"

describe PromotionTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/promotion_types").should route_to("promotion_types#index")
    end

    it "routes to #new" do
      get("/promotion_types/new").should route_to("promotion_types#new")
    end

    it "routes to #show" do
      get("/promotion_types/1").should route_to("promotion_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/promotion_types/1/edit").should route_to("promotion_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/promotion_types").should route_to("promotion_types#create")
    end

    it "routes to #update" do
      put("/promotion_types/1").should route_to("promotion_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/promotion_types/1").should route_to("promotion_types#destroy", :id => "1")
    end

  end
end
