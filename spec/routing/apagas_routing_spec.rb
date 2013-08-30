require "spec_helper"

describe ApagasController do
  describe "routing" do

    it "routes to #index" do
      get("/apagas").should route_to("apagas#index")
    end

    it "routes to #new" do
      get("/apagas/new").should route_to("apagas#new")
    end

    it "routes to #show" do
      get("/apagas/1").should route_to("apagas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/apagas/1/edit").should route_to("apagas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/apagas").should route_to("apagas#create")
    end

    it "routes to #update" do
      put("/apagas/1").should route_to("apagas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/apagas/1").should route_to("apagas#destroy", :id => "1")
    end

  end
end
