require "spec_helper"

describe PromotionsController do
  describe "routing" do

    it "routes to #index" do
      get("/promotions").should route_to("promotions#index")
    end

    it "routes to #new" do
      get("/promotions/new").should route_to("promotions#new")
    end

    it "routes to #show" do
      get("/promotions/1").should route_to("promotions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/promotions/1/edit").should route_to("promotions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/promotions").should route_to("promotions#create")
    end

    it "routes to #update" do
      put("/promotions/1").should route_to("promotions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/promotions/1").should route_to("promotions#destroy", :id => "1")
    end

  end
end
