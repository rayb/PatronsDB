require "spec_helper"

describe RafflesController do
  describe "routing" do

    it "routes to #index" do
      get("/raffles").should route_to("raffles#index")
    end

    it "routes to #new" do
      get("/raffles/new").should route_to("raffles#new")
    end

    it "routes to #show" do
      get("/raffles/1").should route_to("raffles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/raffles/1/edit").should route_to("raffles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/raffles").should route_to("raffles#create")
    end

    it "routes to #update" do
      put("/raffles/1").should route_to("raffles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/raffles/1").should route_to("raffles#destroy", :id => "1")
    end

  end
end
