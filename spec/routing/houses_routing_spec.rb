require "spec_helper"

describe HousesController do
  describe "routing" do

    it "routes to #index" do
      get("/houses").should route_to("houses#index")
    end

    it "routes to #new" do
      get("/houses/new").should route_to("houses#new")
    end

    it "routes to #show" do
      get("/houses/1").should route_to("houses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/houses/1/edit").should route_to("houses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/houses").should route_to("houses#create")
    end

    it "routes to #update" do
      put("/houses/1").should route_to("houses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/houses/1").should route_to("houses#destroy", :id => "1")
    end

  end
end
