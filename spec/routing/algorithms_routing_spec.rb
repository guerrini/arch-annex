require "spec_helper"

describe AlgorithmsController do
  describe "routing" do

    it "routes to #index" do
      get("/algorithms").should route_to("algorithms#index")
    end

    it "routes to #new" do
      get("/algorithms/new").should route_to("algorithms#new")
    end

    it "routes to #show" do
      get("/algorithms/1").should route_to("algorithms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/algorithms/1/edit").should route_to("algorithms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/algorithms").should route_to("algorithms#create")
    end

    it "routes to #update" do
      put("/algorithms/1").should route_to("algorithms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/algorithms/1").should route_to("algorithms#destroy", :id => "1")
    end

  end
end
