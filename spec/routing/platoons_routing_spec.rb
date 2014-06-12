require "spec_helper"

describe PlatoonsController do
  describe "routing" do

    it "routes to #index" do
      get("/platoons").should route_to("platoons#index")
    end

    it "routes to #new" do
      get("/platoons/new").should route_to("platoons#new")
    end

    it "routes to #show" do
      get("/platoons/1").should route_to("platoons#show", :id => "1")
    end

    it "routes to #edit" do
      get("/platoons/1/edit").should route_to("platoons#edit", :id => "1")
    end

    it "routes to #create" do
      post("/platoons").should route_to("platoons#create")
    end

    it "routes to #update" do
      put("/platoons/1").should route_to("platoons#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/platoons/1").should route_to("platoons#destroy", :id => "1")
    end

  end
end
