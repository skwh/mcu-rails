require "spec_helper"

describe FireteamsController do
  describe "routing" do

    it "routes to #index" do
      get("/fireteams").should route_to("fireteams#index")
    end

    it "routes to #new" do
      get("/fireteams/new").should route_to("fireteams#new")
    end

    it "routes to #show" do
      get("/fireteams/1").should route_to("fireteams#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fireteams/1/edit").should route_to("fireteams#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fireteams").should route_to("fireteams#create")
    end

    it "routes to #update" do
      put("/fireteams/1").should route_to("fireteams#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fireteams/1").should route_to("fireteams#destroy", :id => "1")
    end

  end
end
